// doc: https://ravage.fandom.com/wiki/tools_for_Mission_Makers#Make_Traders
private ["_unit", "_isGearTrader", "_isweaponstrader"];

_unit = _this select 0;
_isGearTrader = _this select 1;
_isWeaponsTrader = _this select 2;

if (_isGearTrader) then {
    _unit setVariable ["istrader", "rvg_supplies_s", true];
};
if (_isWeaponsTrader) then {
    _unit setVariable ["istrader", "rvg_arms_s", true];
};