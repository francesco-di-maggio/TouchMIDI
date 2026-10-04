#pragma once

#include "daisy_seed.h"
#include "knobs.h"
#include "pads.h"
#include "switches.h"

namespace synthux {

/**
 * Unified hardware wrapper for the Synthux Simple Touch.
 * Bundles the 12 capacitive pads with continuous pressure, 8 analog inputs (knobs/faders),
 * and 2 toggle switches.
 */
class Touch {
public:
    // update_rate: Process() calls per second
    void Init(daisy::DaisySeed& hw, float update_rate) {
        _knobs.Init(hw, update_rate);
        _pads.Init(hw);
        _switches.Init();
        hw.adc.Start();
    }

    void Process() {
        _pads.Process();
        _knobs.Process();
    }

    Knobs& knobs() { return _knobs; }
    Pads& pads() { return _pads; }
    Switches& switches() { return _switches; }

private:
    Knobs _knobs;
    Pads _pads;
    Switches _switches;
};

} // namespace synthux
