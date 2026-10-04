#pragma once

#include "daisy_seed.h"

namespace synthux {

/**
 * Dual 3-position toggle switches (ON-OFF-ON).
 * - Switch A (Left): Pins D9 (Up) and D8 (Down)
 * - Switch B (Right): Pins D7 (Up) and D6 (Down)
 * 
 * Returns daisy::Switch3::POS_UP, POS_CENTER, or POS_DOWN.
 */
class Switches {
public:
    void Init();

    // Raw position: POS_UP, POS_CENTER, or POS_DOWN
    int A() { return _switch_a.Read(); }
    int B() { return _switch_b.Read(); }
    int Switch(size_t index) { return (index == 0) ? A() : B(); }
    int operator[](size_t index) { return Switch(index); }

    // Helpers for Switch A (Left)
    bool IsAUp() { return A() == daisy::Switch3::POS_UP; }
    bool IsADown() { return A() == daisy::Switch3::POS_DOWN; }
    bool IsACenter() { return A() == daisy::Switch3::POS_CENTER; }

    // Helpers for Switch B (Right)
    bool IsBUp() { return B() == daisy::Switch3::POS_UP; }
    bool IsBDown() { return B() == daisy::Switch3::POS_DOWN; }
    bool IsBCenter() { return B() == daisy::Switch3::POS_CENTER; }

private:
    daisy::Switch3 _switch_a;
    daisy::Switch3 _switch_b;
};

} // namespace synthux
