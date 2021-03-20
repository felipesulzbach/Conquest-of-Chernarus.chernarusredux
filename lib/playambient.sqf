// by Sulzbach
params ["_sound", "_type", "_delay"];

if (_delay > 0) then { Sleep _delay; };

if (_type == "M") then {
	[_sound, "playMusic", true, false] call BIS_fnc_MP;
} else {
    [_sound, "playSound", true, false] call BIS_fnc_MP;
};