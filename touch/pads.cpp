#include "pads.h"
#include <cmath>

using namespace synthux;
using namespace daisy;

void Pads::WriteRegister(uint8_t reg, uint8_t val) {
    uint8_t buf[2] = { reg, val };
    _i2c.TransmitBlocking(kMpr121Addr, buf, 2, 10);
}

bool Pads::ReadBurst(uint8_t start_reg, uint8_t* buffer, uint16_t size) {
    if (_i2c.TransmitBlocking(kMpr121Addr, &start_reg, 1, 10) != I2CHandle::Result::OK) {
        return false;
    }
    return (_i2c.ReceiveBlocking(kMpr121Addr, buffer, size, 10) == I2CHandle::Result::OK);
}

void Pads::Init(DaisySeed& hw) {
    // 1. Initialize I2C1 (PB8 = SCL, PB9 = SDA, 400 kHz Fast Mode)
    I2CHandle::Config i2c_conf;
    i2c_conf.mode = I2CHandle::Config::Mode::I2C_MASTER;
    i2c_conf.periph = I2CHandle::Config::Peripheral::I2C_1;
    i2c_conf.speed = I2CHandle::Config::Speed::I2C_400KHZ;
    i2c_conf.pin_config.scl = Pin(PORTB, 8);
    i2c_conf.pin_config.sda = Pin(PORTB, 9);
    _i2c.Init(i2c_conf);

    // 2. Soft Reset MPR121
    WriteRegister(0x80, 0x63);
    System::Delay(5);

    // 3. Enter Stop Mode (ECR = 0x00) to configure registers
    WriteRegister(0x5E, 0x00);

    // 4. Touch & Release Thresholds for all 12 electrodes
    for (uint8_t i = 0; i < kNumPads; i++) {
        WriteRegister(0x41 + i * 2, kTouchThreshold);
        WriteRegister(0x42 + i * 2, kReleaseThreshold);
    }

    // 5. Baseline Filter Configuration (NXP AN3891)
    // Rising baseline filter (fast)
    WriteRegister(0x2B, 0x01); // MHDR
    WriteRegister(0x2C, 0x01); // NHDR
    WriteRegister(0x2D, 0x0E); // NCLR
    WriteRegister(0x2E, 0x00); // FDLR

    // Falling baseline filter (slow, so a press is not absorbed into the baseline)
    WriteRegister(0x2F, 0x01); // MHDF
    WriteRegister(0x30, 0x01); // NHDF
    WriteRegister(0x31, 0x10); // NCLF (16 consecutive samples)
    WriteRegister(0x32, 0x04); // FDLF

    // Touched baseline filter
    WriteRegister(0x33, 0x00); // NHDT
    WriteRegister(0x34, 0x00); // NCLT
    WriteRegister(0x35, 0x00); // FDLT

    // Debounce: DR = 1, DT = 1
    WriteRegister(0x5B, 0x11);

    // 6. Analog Front-End (AFE) Configuration (NXP AN3889 / AN3890)
    // CONFIG1 (0x5C): FFI = 11 (34 samples), CDC = 16 uA
    // (0b11 << 6) | 0x10 = 0xD0
    WriteRegister(0x5C, 0xD0);

    // CONFIG2 (0x5D): CDT = 1uS (0b010 in bits 7:5), SFI = 10 (0b10 in bits 4:3), ESI = 2ms (0b001 in bits 2:0)
    // (0b010 << 5) | (0b10 << 3) | 0b001 = 0x51
    WriteRegister(0x5D, 0x51);

    // 7. Auto-Configuration Registers (NXP AN3889)
    // For Vdd = 3.3V:
    // UPLIMIT = 200: ((3.3 - 0.7) / 3.3) * 256
    // TARGETLIMIT = 180: UPLIMIT * 0.9 (centers resting baseline at ~720 ADC counts)
    // LOWLIMIT = 130: UPLIMIT * 0.65 (lower boundary ~520 ADC counts)
    WriteRegister(0x7D, 200); // USL
    WriteRegister(0x7E, 130); // LSL
    WriteRegister(0x7F, 180); // TL

    // AUTOCONFIG0 (0x7B):
    // FFI = 11 (34 samples, matches CONFIG1), RETRY = 00, BVA = 10 (target level baseline), ACE = 1, ARE = 1
    // (0b11 << 6) | (0b00 << 4) | (0b10 << 2) | 0b11 = 0xCB
    WriteRegister(0x7B, 0xCB);
    WriteRegister(0x7C, 0x00); // AUTOCONFIG1 (search both CDC and CDT)

    // 8. Start Run Mode with all 12 electrodes enabled:
    // ECR (0x5E): CL = 10 (Initialize baseline from target/first data, then track)
    // ELE_EN = 12 electrodes
    // (0b10 << 6) | 12 = 0x8C
    WriteRegister(0x5E, 0x8C);

    // 9. Wait for auto-configuration
    System::Delay(80);
}

void Pads::Recalibrate() {
    // Put MPR121 in Stop Mode
    WriteRegister(0x5E, 0x00);
    System::Delay(5);

    // Re-enter Run Mode with Autoconfig enabled
    WriteRegister(0x5E, 0x8C);
    System::Delay(80);

    // Release held pads and clear per-pad state
    for (uint16_t i = 0; i < kNumPads; i++) {
        if (IsTouched(i) && _on_release) _on_release(i);
        _pressure[i] = 0.0f;
        _velocity[i] = 0.0f;
        _debounce_cnt[i] = 0;
        _strike_scans[i] = 0;
        _strike_peak[i] = 0;
        _release_lock[i] = 0;
    }
    _state = 0;
}

// Delta above kDeltaFloor, normalized by the pad's max delta (0.0 .. 1.0)
float Pads::Normalize(uint16_t pad, int32_t delta) const {
    float effective_max = _pad_max_delta[pad] - static_cast<float>(kDeltaFloor);
    if (effective_max < kMinDeltaRange) effective_max = kMinDeltaRange;

    float norm = static_cast<float>(delta - kDeltaFloor) / effective_max;
    if (norm > 1.0f) norm = 1.0f;
    if (norm < 0.0f) norm = 0.0f;
    return norm;
}

// Close the strike window: set velocity from the peak delta, then report the touch
void Pads::FireTouch(uint16_t pad, float pressure) {
    _strike_scans[pad] = 0;

    float norm = Normalize(pad, _strike_peak[pad]);
    float vel = 0.35f * norm + 0.65f * sqrtf(norm);
    if (vel < kVelocityFloor) vel = kVelocityFloor;
    if (vel > 1.0f) vel = 1.0f;
    _velocity[pad] = vel;
    _pressure[pad] = pressure;

    if (_on_touch) _on_touch(pad);
}

void Pads::Process() {
    // Read registers 0x00-0x29 in one transfer
    uint8_t raw[42];
    if (!ReadBurst(0x00, raw, 42)) {
        // I2C error: keep previous state
        return;
    }

    uint16_t raw_state = (static_cast<uint16_t>(raw[1] & 0x0F) << 8) | raw[0];
    _oor_state = (static_cast<uint16_t>(raw[3] & 0x0F) << 8) | raw[2];

    for (uint16_t i = 0; i < kNumPads; i++) {
        uint16_t mask = 1 << i;
        bool raw_touched = (raw_state & mask) != 0;
        bool was_touched = (_state & mask) != 0;
        bool state_changed = false;

        // 10-bit Filtered Capacitance from register 0x04 + i*2
        uint16_t filt = (static_cast<uint16_t>(raw[4 + i * 2 + 1] & 0x03) << 8) | raw[4 + i * 2];

        // 10-bit Baseline Capacitance from register 0x1E + i
        uint16_t base = static_cast<uint16_t>(raw[0x1E + i]) << 2;

        // Delta: positive when touched (capacitance increases, ADC voltage drops below baseline)
        int32_t delta = static_cast<int32_t>(base) - static_cast<int32_t>(filt);
        if (delta < 0) delta = 0;

        // Anti-stuck: delta below the release threshold counts as released, whatever the touch bit says
        if (delta < kReleaseThreshold) raw_touched = false;

        if (_release_lock[i] > 0) _release_lock[i]--;

        // Touch registers immediately (unless locked after a release), release after kReleaseScans scans
        if (raw_touched != was_touched) {
            if (raw_touched) {
                if (_release_lock[i] == 0) {
                    _state |= mask;
                    state_changed = true;
                    _debounce_cnt[i] = 0;
                    _strike_scans[i] = kStrikeScans;
                    _strike_peak[i] = delta;
                }
            } else {
                _debounce_cnt[i]++;
                if (_debounce_cnt[i] >= kReleaseScans) {
                    _debounce_cnt[i] = 0;
                    _state &= ~mask;
                    state_changed = true;
                }
            }
        } else {
            _debounce_cnt[i] = 0;
        }

        bool is_touched = (_state & mask) != 0;

        if (is_touched) {
            float target_p = 0.0f;
            if (delta > kDeltaFloor) {
                float norm = Normalize(i, delta);
                target_p = _exponential ? (norm * norm) : norm;
            }

            if (_strike_scans[i] > 0) {
                // Strike window: track the peak, report the touch when it ends or the peak has passed
                if (delta > _strike_peak[i]) _strike_peak[i] = delta;
                _strike_scans[i]--;

                bool peak_passed = _strike_peak[i] > kStrikePeakMin && delta < _strike_peak[i] - kStrikePeakDrop;
                if (_strike_scans[i] == 0 || peak_passed) FireTouch(i, target_p);
            } else {
                // While held: smoothed
                _pressure[i] += (target_p - _pressure[i]) * kSmoothing;
            }
        } else {
            // Released inside the strike window: report the touch before the release
            if (_strike_scans[i] > 0) {
                _strike_scans[i] = 0;
                if (_strike_peak[i] > kDeltaFloor && _release_lock[i] == 0) FireTouch(i, 0.0f);
            }

            // Released
            _pressure[i] += (0.0f - _pressure[i]) * kSmoothing;
            if (_pressure[i] < kPressureFloor) _pressure[i] = 0.0f;

            if (state_changed && !raw_touched) {
                _pressure[i] = 0.0f;
                _release_lock[i] = kReleaseLockScans;
                if (_on_release) _on_release(i);
            }
        }
    }
}
