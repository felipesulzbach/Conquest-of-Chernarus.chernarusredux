private ["_unit"];

_unit = _this select 0;

_unit addAction ["Recruit Unit", "\ravage\actions\recruit.sqf", "", 1, false, true, "", "alive _target && {
    group _target != group _this
}"];
_unit addAction ["Dismiss Unit", "\ravage\actions\dismiss.sqf", "", 1, false, true, "", "alive _target && {
    group _target == group _this
}"];