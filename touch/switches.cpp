#include "switches.h"

using namespace synthux;
using namespace daisy;

void Switches::Init() {
    // Switch A (Left switch): D9 is Up, D8 is Down
    _switch_a.Init(seed::D9, seed::D8);
    // Switch B (Right switch): D7 is Up, D6 is Down
    _switch_b.Init(seed::D7, seed::D6);
}
