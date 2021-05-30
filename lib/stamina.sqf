_active = _this select 0;
_unit = _this select 1;

_unit enableStamina _active;
_unit forceWalk _active;
_unit enableFatigue _active;