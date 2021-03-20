// by Sulzbach
params ["_obj", "_sound", "_timesleep"];

if (_timesleep == 0) then {
	_obj say3D _sound;
} else {
    nul = [ _obj ] spawn {while {true} do {(_this select 0) say3D _sound; sleep _timesleep;};};
};