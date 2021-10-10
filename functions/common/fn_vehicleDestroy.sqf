private ["_vehicle", "_texture"];

_vehicle = _this select 0;
_texture = _this select 1;

_vehicle setVariable ["rvg_owned", true, true];

if (!isnil _texture) then {
    _vehicle setobjectMaterialGlobal [0, _texture];
    // _vehicle setobjectMaterialGlobal [0, "A3\soft_F\Offroad_01\Data\Offroad_01_int_base.rvmat", "A3\soft_F\Offroad_01\Data\Offroad_01_int_base_damage.rvmat"];
}