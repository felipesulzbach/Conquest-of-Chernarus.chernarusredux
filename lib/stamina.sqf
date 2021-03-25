_active = _this select 0;
_unit = _this select 1;

/*[] spawn {
    while {true} do {
        player enableStamina _active;
        player forceWalk _active;
		player enableFatigue _active;
        uiSleep 6;
    };
};*/

/*{
	_x enableStamina _active;
    _x forceWalk _active;
	_x enableFatigue _active;
} forEach playableUnits;*/

_unit enableStamina _active;
_unit forceWalk _active;
_unit enableFatigue _active;