#pragma once
#include <cstdint>

// Device name shown in MIDI port lists
#define TOUCHMIDI_MANUFACTURER "Synthux"
#define TOUCHMIDI_PRODUCT      "TouchMIDI"

// MIDI channel for outgoing messages (1-16)
static constexpr uint8_t kMidiChannel = 1;

// Pads P00-P11: notes (C3..E4 in C major, then C2, D2)
static constexpr uint8_t kNotes[12] = { 48, 50, 52, 53, 55, 57, 59, 60, 62, 64, 36, 38 };

// Pads P00-P11: per-pad pressure on CC kPadPressureCCBase + pad
static constexpr uint8_t kPadPressureCCBase = 30;

// Knobs S30-S35, then faders S36 (left), S37 (right)
static constexpr uint8_t kKnobCC[8] = { 14, 15, 16, 17, 18, 19, 20, 21 };

// Switches (Down=0, Center=64, Up=127)
static constexpr uint8_t kSwitchACC = 80;
static constexpr uint8_t kSwitchBCC = 81;

// Host -> device. Not 120-127: those are reserved Channel Mode messages,
// which libDaisy does not pass on as Control Change.
static constexpr uint8_t kLedCC         = 111;
static constexpr uint8_t kRecalibrateCC = 112;
static constexpr uint8_t kDumpCC        = 113;
