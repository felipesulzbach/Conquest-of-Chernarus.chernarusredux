// Loads the saved loadout of the player
[player, [missionNamespace, "inventory_var"]] call BIS_fnc_saveInventory;

uiSleep 10;

hideBody player;

/*{
	if (!alive _x) then {
		hideBody _x;
	}
} forEach playableUnits;*/
