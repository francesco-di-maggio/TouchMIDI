#include "daisy_seed.h"
#include "touch/touch.h"
#include "config.h"
#include <cmath>
#include <array>

const char* USBD_MANUFACTURER_STRING = TOUCHMIDI_MANUFACTURER;
const char* USBD_PRODUCT_STRING_HS = TOUCHMIDI_PRODUCT;
const char* USBD_PRODUCT_STRING_FS = TOUCHMIDI_PRODUCT;

using namespace daisy;
using namespace synthux;

static DaisySeed      hw;
static Touch          touch;
static MidiUsbHandler midi;

static constexpr uint32_t kLoopMs      = 3;
static constexpr int      kSettleScans = 40;
static constexpr uint32_t kDumpGapUs   = 250;

static constexpr uint8_t kNoteOn     = 0x90 | (kMidiChannel - 1);
static constexpr uint8_t kNoteOff    = 0x80 | (kMidiChannel - 1);
static constexpr uint8_t kPolyAT     = 0xA0 | (kMidiChannel - 1);
static constexpr uint8_t kCC         = 0xB0 | (kMidiChannel - 1);
static constexpr uint8_t kChannelAT  = 0xD0 | (kMidiChannel - 1);

static uint8_t last_knob_val[Knobs::kNumKnobs];
static uint8_t last_poly_p[Pads::kNumPads] = { 0 };
static uint8_t last_channel_p = 0;
static int     last_switch_a = -1;
static int     last_switch_b = -1;

static void SendMidi3(uint8_t status, uint8_t d1, uint8_t d2) {
    uint8_t msg[3] = { status, d1, d2 };
    midi.SendMessage(msg, 3);
}

static void SendMidi2(uint8_t status, uint8_t d1) {
    uint8_t msg[2] = { status, d1 };
    midi.SendMessage(msg, 2);
}

// 0.0..1.0 -> 0..127
static uint8_t ToMidi(float x) {
    if (x <= 0.0f) return 0;
    if (x >= 1.0f) return 127;
    return static_cast<uint8_t>(x * 127.0f + 0.5f);
}

// Down=0, Center=64, Up=127
static uint8_t SwitchToMidi(int pos) {
    return (pos == Switch3::POS_UP) ? 127 : (pos == Switch3::POS_CENTER) ? 64 : 0;
}

static uint8_t ReadKnobVal(size_t k) {
    return ToMidi(touch.knobs()[k]);
}

static void SendKnobCC(size_t k) {
    uint8_t val = ReadKnobVal(k);
    last_knob_val[k] = val;
    SendMidi3(kCC, kKnobCC[k], val);
}

static void SendSwitchACC() {
    last_switch_a = touch.switches().A();
    SendMidi3(kCC, kSwitchACC, SwitchToMidi(last_switch_a));
}

static void SendSwitchBCC() {
    last_switch_b = touch.switches().B();
    SendMidi3(kCC, kSwitchBCC, SwitchToMidi(last_switch_b));
}

static void DumpAllControls() {
    for (size_t k = 0; k < Knobs::kNumKnobs; k++) {
        SendKnobCC(k);
        System::DelayUs(kDumpGapUs);
    }
    SendSwitchACC();
    System::DelayUs(kDumpGapUs);
    SendSwitchBCC();
    System::DelayUs(kDumpGapUs);
}

int main(void) {
    hw.Init(true);

    MidiUsbHandler::Config midi_cfg;
    midi_cfg.transport_config.periph = MidiUsbTransport::Config::INTERNAL;
    midi.Init(midi_cfg);
    midi.StartReceive();

    touch.Init(hw, 1000.0f / kLoopMs);

    // Note On (strike velocity) & initial pressure when pad is touched
    touch.pads().SetOnTouch([](uint16_t pad) {
        if (pad < Pads::kNumPads) {
            float p = touch.pads()[pad];
            float v = touch.pads().Velocity(pad);
            uint8_t vel = static_cast<uint8_t>(kVelocityMin + v * (127 - kVelocityMin) + 0.5f);
            if (vel > 127) vel = 127;
            SendMidi3(kNoteOn, kNotes[pad], vel);

            uint8_t press = ToMidi(p);
            SendMidi3(kPolyAT, kNotes[pad], press);
            SendMidi3(kCC, kPadPressureCCBase + pad, press);
            last_poly_p[pad] = press;
        }
    });

    // Note Off & clear pressure when pad is released
    touch.pads().SetOnRelease([](uint16_t pad) {
        if (pad < Pads::kNumPads) {
            SendMidi3(kNoteOff, kNotes[pad], 0);
            SendMidi3(kPolyAT, kNotes[pad], 0);
            SendMidi3(kCC, kPadPressureCCBase + pad, 0);
            last_poly_p[pad] = 0;
        }
    });

    // Baseline capacitance settling delay
    for (int i = 0; i < kSettleScans; i++) {
        touch.Process();
        System::Delay(kLoopMs);
    }

    // Broadcast all current control positions
    DumpAllControls();

    while (1) {
        touch.Process();

        // Host -> device
        midi.Listen();
        while (midi.HasEvents()) {
            MidiEvent ev = midi.PopEvent();
            if (ev.type == ControlChange) {
                ControlChangeEvent cc = ev.AsControlChange();
                if (cc.control_number == kLedCC) {
                    hw.SetLed(cc.value >= 64);
                } else if (cc.control_number == kRecalibrateCC) {
                    touch.pads().Recalibrate();
                } else if (cc.control_number == kDumpCC) {
                    DumpAllControls();
                }
            }
        }

        // Pad pressure: Poly Aftertouch, per-pad CC, Channel Aftertouch (max)
        uint8_t max_active_p = 0;
        for (uint16_t p = 0; p < Pads::kNumPads; p++) {
            if (touch.pads().IsTouched(p)) {
                uint8_t cur_p = ToMidi(touch.pads()[p]);
                if (cur_p > max_active_p) {
                    max_active_p = cur_p;
                }
                if (cur_p != last_poly_p[p]) {
                    last_poly_p[p] = cur_p;
                    SendMidi3(kPolyAT, kNotes[p], cur_p);
                    SendMidi3(kCC, kPadPressureCCBase + p, cur_p);
                }
            }
        }

        if (max_active_p != last_channel_p) {
            last_channel_p = max_active_p;
            SendMidi2(kChannelAT, last_channel_p);
        }

        // Knobs and faders
        for (size_t k = 0; k < Knobs::kNumKnobs; k++) {
            if (ReadKnobVal(k) != last_knob_val[k]) {
                SendKnobCC(k);
            }
        }

        // Switches
        if (touch.switches().A() != last_switch_a) {
            SendSwitchACC();
        }
        if (touch.switches().B() != last_switch_b) {
            SendSwitchBCC();
        }

        System::Delay(kLoopMs);
    }
}
