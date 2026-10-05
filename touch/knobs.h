#pragma once

#include <array>
#include "daisy_seed.h"

namespace synthux {

/**
 * 8-channel analog input reader (S30–S37) for the Synthux Simple Touch.
 * - S30 to S35: Rotary potentiometers (ADC channels A0–A5)
 * - S36, S37: Linear faders (ADC channels A6, A7)
 * 
 * Values are filtered and normalized between 0.0 and 1.0.
 */
class Knobs {
public:
    static constexpr size_t kNumKnobs = 8;

    // update_rate: Process() calls per second, slew: smoothing time in seconds
    void Init(daisy::DaisySeed& hw, float update_rate, float slew = 0.02f);
    void Process();

    // Index-based access (0 to 7)
    float operator[](size_t index) const { return (index < kNumKnobs) ? _values[index] : 0.0f; }
    float Value(size_t index) const { return (index < kNumKnobs) ? _values[index] : 0.0f; }
    const std::array<float, kNumKnobs>& Values() const { return _values; }

    // Named accessors for 6 rotary knobs (S30–S35)
    float s30() const { return _values[0]; }
    float s31() const { return _values[1]; }
    float s32() const { return _values[2]; }
    float s33() const { return _values[3]; }
    float s34() const { return _values[4]; }
    float s35() const { return _values[5]; }
    float Knob(size_t index) const { return (index < 6) ? _values[index] : 0.0f; }

    // Named accessors for 2 faders (S36–S37)
    float s36() const { return _values[6]; }
    float s37() const { return _values[7]; }
    float LeftFader() const { return _values[6]; }
    float RightFader() const { return _values[7]; }
    float Fader(size_t index) const { return (index == 0) ? _values[6] : (index == 1) ? _values[7] : 0.0f; }

    daisy::AnalogControl& Get(size_t index) { return _knobs[index]; }

private:
    std::array<daisy::AnalogControl, kNumKnobs> _knobs;
    std::array<float, kNumKnobs> _values{};
};

} // namespace synthux
