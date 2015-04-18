/*
 * Author: Ruthberg
 * Updates all atmosphere column input fields
 *
 * Arguments:
 * Nothing
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call ace_atragmx_fnc_update_atmosphere
 *
 * Public: No
 */
#include "script_component.hpp"

if (GVAR(currentUnit) != 1) then {
    ctrlSetText [200, Str(Round(GVAR(temperature) * 10) / 10)];
} else {
    ctrlSetText [200, Str(Round((GVAR(temperature) * 1.8 + 32) * 10) / 10)];
};
if (GVAR(currentUnit) != 1) then {
    ctrlSetText [210, Str(Round(GVAR(barometricPressure)))];
} else {
    ctrlSetText [210, Str(Round(GVAR(barometricPressure) / 33.8638866667 * 100) / 100)];
};
ctrlSetText [220, Str(Round(GVAR(relativeHumidity) * 100 * 10) / 10)];
if (GVAR(currentUnit) != 1) then {
    ctrlSetText [230, Str(Round(GVAR(altitude)))];
} else {
    ctrlSetText [230, Str(Round(GVAR(altitude) * 3.2808399))];
};
