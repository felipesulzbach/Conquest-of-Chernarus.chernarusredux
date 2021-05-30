/*
	Author:
	DanielChicken, Jogufe
	
	Description:
	Creates a flyby from behind, flying overhead.
*/
private ["_target","_airVehicle","_pos","_posStart","_postFinish"];

		
_target = _this; // target object to spawn jet flyby

_airVehicle = ([independent, 3] call MIS_fnc_getAirVehicleClass) + ([east, 3] call MIS_fnc_getAirVehicleClass);

_posStart = _target getRelPos [750, 180];
_alt = 100 + random 1000;
		
_postFinish = _target getRelPos [2500, 0];

ambFlyby = [_posStart , _postFinish, _alt, "FULL", selectRandom _airVehicle] call BIS_fnc_ambientFlyBy;
