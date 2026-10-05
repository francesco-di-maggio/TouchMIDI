#include "knobs.h"

using namespace synthux;
using namespace daisy;

void Knobs::Init(DaisySeed& hw, float update_rate, float slew) {
    // S30..S35 are pots on A0..A5; S36, S37 are faders on A6, A7
    Pin pins[kNumKnobs] = {
        seed::A0, seed::A1, seed::A2, seed::A3,
        seed::A4, seed::A5, seed::A6, seed::A7
    };

    AdcChannelConfig cfg[kNumKnobs];
    for (size_t i = 0; i < kNumKnobs; i++) {
        cfg[i].InitSingle(pins[i]);
    }
    hw.adc.Init(cfg, kNumKnobs);

    for (size_t i = 0; i < kNumKnobs; i++) {
        _knobs[i].Init(hw.adc.GetPtr(i), update_rate, false, false, slew);
        _values[i] = _knobs[i].Process();
    }
}

void Knobs::Process() {
    for (size_t i = 0; i < kNumKnobs; i++) {
        _values[i] = _knobs[i].Process();
    }
}
