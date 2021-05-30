private ["_side","_type","_allSideAirCfgPaths","_allHeliCfgPaths","_allAttackHeliCfgPaths","_allTransportkHeliCfgPaths","_allUAVCfgPaths","_allPlaneCfgPaths"];

_side = _this select 0 call BIS_fnc_sideID; // Vehicle Side to get (east, west, resistance)
_type = _this select 1; // Type of vehicle (0: attackHeli, 1: transportHelis, 2: uavs, 3: planes)

_allSideAirCfgPaths = "
	getNumber (_x >> 'type') isEqualTo 2 &&
	{getNumber (_x >> 'side') isEqualTo _side} &&
	{getNumber (_x >> 'scope') >= 2}
" configClasses (configFile >> "cfgVehicles");

switch _type do {
	case 0: {
		_allHeliCfgPaths = _allSideAirCfgPaths select {
			toLower getText (_x >> 'simulation') isEqualTo "helicopterrtd" &&
			{toLower getText (_x >> 'vehicleClass') != "autonomous"}
		};
		_allAttackHeliCfgPaths = _allHeliCfgPaths select {
			"CAS_Heli" in (getArray (_x >> 'availableForSupportTypes'))
		};
		+(_allAttackHeliCfgPaths apply {configName _x})
	};
	case 1: {
		_allHeliCfgPaths = _allSideAirCfgPaths select {
			toLower getText (_x >> 'simulation') isEqualTo "helicopterrtd" &&
			{toLower getText (_x >> 'vehicleClass') != "autonomous"}
		};
		_allTransportkHeliCfgPaths = _allHeliCfgPaths select {
			"Transport" in (getArray (_x >> 'availableForSupportTypes')) ||
			{"Drop" in (getArray (_x >> 'availableForSupportTypes'))}
		};
		+(_allTransportkHeliCfgPaths apply {configName _x})
	};
	case 2: {
		_allUAVCfgPaths = _allSideAirCfgPaths select {
			toLower getText (_x >> 'vehicleClass') == "autonomous"
		};
		+(_allUAVCfgPaths apply {configName _x})
	};
	case 3: {
		_allPlaneCfgPaths = _allSideAirCfgPaths select {
			toLower getText (_x >> 'simulation') isEqualTo "airplanex" && 
			{"CAS_Bombing" in (getArray (_x >> 'availableForSupportTypes'))} &&
			{toLower getText (_x >> 'vehicleClass') != "autonomous"}
		};
		+(_allPlaneCfgPaths apply {configName _x})
	};
	default {
		throw "Invalid VehicleType";
	};
}