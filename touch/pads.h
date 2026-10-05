#pragma once

#include "daisy_seed.h"
#include <functional>
#include <array>

namespace synthux {

/**
 * MPR121 12-pad capacitive touch driver (P00–P11) with continuous pressure sensing.
 * Connected via I2C1 (SCL: PB8, SDA: PB9, Address: 0x5A).
 */
class Pads {
public:
    static constexpr size_t kNumPads = 12;

    static constexpr uint8_t kTouchThreshold   = 6;     // MPR121 touch threshold (counts)
    static constexpr uint8_t kReleaseThreshold = 3;     // MPR121 release threshold (counts)
    static constexpr uint8_t kReleaseScans     = 2;     // scans without touch before release
    static constexpr int32_t kDeltaFloor       = 5;     // delta at or below this is zero pressure
    static constexpr float   kMinDeltaRange    = 30.0f; // lower limit for max delta minus floor
    static constexpr float   kSmoothing        = 0.40f; // pressure smoothing per scan (0-1, higher = faster)
    static constexpr float   kPressureFloor    = 0.01f; // released pressure below this snaps to 0

    // Per-pad delta at full finger press, mapped to pressure 1.0
    static constexpr std::array<float, kNumPads> kDefaultMaxDeltas = {
        500.0f, // P00
        500.0f, // P01
        500.0f, // P02
        500.0f, // P03
        500.0f, // P04
        500.0f, // P05
        500.0f, // P06
        500.0f, // P07
        500.0f, // P08
        500.0f, // P09
        500.0f, // P10
        500.0f  // P11
    };

    Pads() : _state{0}, _oor_state{0}, _exponential{true} {
        for (size_t i = 0; i < kNumPads; i++) {
            _pressure[i] = 0.0f;
            _debounce_cnt[i] = 0;
            _pad_max_delta[i] = kDefaultMaxDeltas[i];
        }
    }

    void Init(daisy::DaisySeed& hw);
    void Process();
    void Recalibrate();

    // Response curve: true = quadratic, false = linear
    void SetCurveExponential(bool exp) { _exponential = exp; }
    bool IsCurveExponential() const { return _exponential; }

    // Max delta tuning
    void SetMaxDelta(uint16_t pad, float max_delta) { if (pad < kNumPads) _pad_max_delta[pad] = max_delta; }
    float MaxDelta(uint16_t pad) const { return (pad < kNumPads) ? _pad_max_delta[pad] : 0.0f; }

    // Event callbacks
    void SetOnTouch(std::function<void(uint16_t pad)> cb) { _on_touch = cb; }
    void SetOnRelease(std::function<void(uint16_t pad)> cb) { _on_release = cb; }

    // State queries
    bool IsTouched(uint16_t pad) const { return (_state & (1 << pad)) != 0; }
    bool HasTouch() const { return _state > 0; }
    uint16_t State() const { return _state; }
    uint16_t OutOfRange() const { return _oor_state; }

    // Continuous pressure sensing (0.0 .. 1.0)
    float Pressure(uint16_t pad) const { return (pad < kNumPads) ? _pressure[pad] : 0.0f; }
    float operator[](size_t pad) const { return Pressure(pad); }
    const std::array<float, kNumPads>& Pressures() const { return _pressure; }

private:
    void WriteRegister(uint8_t reg, uint8_t val);
    bool ReadBurst(uint8_t start_reg, uint8_t* buffer, uint16_t size);

    static constexpr uint8_t kMpr121Addr = 0x5A;

    daisy::I2CHandle _i2c;
    uint16_t _state;
    uint16_t _oor_state;
    bool _exponential;

    std::array<float, kNumPads> _pad_max_delta{};
    std::array<float, kNumPads> _pressure{};
    std::array<uint8_t, kNumPads> _debounce_cnt{};

    std::function<void(uint16_t pad)> _on_touch;
    std::function<void(uint16_t pad)> _on_release;
};

} // namespace synthux
