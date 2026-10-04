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

static constexpr uint32_t kLoopMs = 3;

static constexpr uint8_t kNoteOn     = 0x90 | (kMidiChannel - 1);
static constexpr uint8_t kNoteOff    = 0x80 | (kMidiChannel - 1);
static constexpr uint8_t kPolyAT     = 0xA0 | (kMidiChannel - 1);
static constexpr uint8_t kCC         = 0xB0 | (kMidiChannel - 1);
static constexpr uint8_t kChannelAT  = 0xD0 | (kMidiChannel - 1);

static uint8_t last_knob_val[8] = { 255, 255, 255, 255, 255, 255, 255, 255 };
static uint8_t last_poly_p[12] = { 0 };
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

static uint8_t ReadKnobVal(size_t k) {
    uint8_t val = static_cast<uint8_t>(touch.knobs()[k] * 127.0f + 0.5f);
    return (val > 127) ? 127 : val;
}

static void SendKnobCC(size_t k) {
    uint8_t val = ReadKnobVal(k);
    last_knob_val[k] = val;
    SendMidi3(kCC, kKnobCC[k], val);
}

static void SendSwitchACC() {
    int sw_a = touch.switches().A();
    last_switch_a = sw_a;
    uint8_t val = (sw_a == Switch3::POS_UP) ? 127 :
                  (sw_a == Switch3::POS_CENTER) ? 64 : 0;
    SendMidi3(kCC, kSwitchACC, val);
}

static void SendSwitchBCC() {
    int sw_b = touch.switches().B();
    last_switch_b = sw_b;
    uint8_t val = (sw_b == Switch3::POS_UP) ? 127 :
                  (sw_b == Switch3::POS_CENTER) ? 64 : 0;
    SendMidi3(kCC, kSwitchBCC, val);
}

static void DumpAllControls() {
    for (size_t k = 0; k < 8; k++) {
        SendKnobCC(k);
        System::DelayUs(250);
    }
    SendSwitchACC();
    System::DelayUs(250);
    SendSwitchBCC();
    System::DelayUs(250);
}

int main(void) {
    hw.Init(true);

    // Initialize USB MIDI transport
    MidiUsbHandler::Config midi_cfg;
    midi_cfg.transport_config.periph = MidiUsbTransport::Config::INTERNAL;
    midi.Init(midi_cfg);
    midi.StartReceive();

    touch.Init(hw, 1000.0f / kLoopMs);

    // Note On & initial pressure when pad is touched
    touch.pads().SetOnTouch([](uint16_t pad) {
        if (pad < 12) {
            float p = touch.pads()[pad];
            uint8_t vel = static_cast<uint8_t>(35.0f + p * 92.0f + 0.5f);
            if (vel < 1) vel = 1;
            if (vel > 127) vel = 127;
            SendMidi3(kNoteOn, kNotes[pad], vel);

            uint8_t press = static_cast<uint8_t>(p * 127.0f + 0.5f);
            if (press > 127) press = 127;
            SendMidi3(kPolyAT, kNotes[pad], press);
            SendMidi3(kCC, kPadPressureCCBase + pad, press);
            last_poly_p[pad] = press;
        }
    });

    // Note Off & clear pressure when pad is released
    touch.pads().SetOnRelease([](uint16_t pad) {
        if (pad < 12) {
            SendMidi3(kNoteOff, kNotes[pad], 0);
            SendMidi3(kPolyAT, kNotes[pad], 0);
            SendMidi3(kCC, kPadPressureCCBase + pad, 0);
            last_poly_p[pad] = 0;
        }
    });

    // Baseline capacitance settling delay
    for (int i = 0; i < 40; i++) {
        touch.Process();
        System::Delay(kLoopMs);
    }

    // Broadcast all current control positions
    DumpAllControls();

    while (1) {
        touch.Process();

        // 0. Process incoming MIDI commands from host
        midi.Listen();
        while (midi.HasEvents()) {
            MidiEvent ev = midi.PopEvent();
            if (ev.type == ControlChange) {
                ControlChangeEvent cc = ev.AsControlChange();
                if (cc.control_number == kLedCC) {
                    // LED control (>=64 = on)
                    hw.SetLed(cc.value >= 64);
                } else if (cc.control_number == kRecalibrateCC) {
                    // Re-zero / re-calibrate capacitive touch baseline
                    touch.pads().Recalibrate();
                } else if (cc.control_number == kDumpCC) {
                    // Host requested full control dump
                    DumpAllControls();
                }
            }
        }

        // 1. Continuous Pad Pressure: Poly Aftertouch + per-pad CC + Channel Aftertouch
        uint8_t max_active_p = 0;
        for (uint16_t p = 0; p < 12; p++) {
            if (touch.pads().IsTouched(p)) {
                uint8_t cur_p = static_cast<uint8_t>(touch.pads()[p] * 127.0f + 0.5f);
                if (cur_p > 127) cur_p = 127;
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

        // 2. Control Change (CC) on knob & fader change
        for (size_t k = 0; k < 8; k++) {
            if (ReadKnobVal(k) != last_knob_val[k]) {
                SendKnobCC(k);
            }
        }

        // 3. Toggle switches
        if (touch.switches().A() != last_switch_a) {
            SendSwitchACC();
        }
        if (touch.switches().B() != last_switch_b) {
            SendSwitchBCC();
        }

        System::Delay(kLoopMs);
    }
}
