/*
Author: Sulzbach
Description: Hide or show units in the layer to improve server performance.
*/
private ["_layername", "_flgHide"];

_layername = _this select 0;
_flgHide = _this select 1;

if (_flgHide) then {
    {
        _x enableSimulation false;
        _x hideObjectglobal true;
    } forEach (getMissionLayerEntities _layername select 0);
} else {
    {
        _x enableSimulation true;
        _x hideObjectglobal false;
    } forEach (getMissionLayerEntities _layername select 0);
}