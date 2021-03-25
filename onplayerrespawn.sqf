// Loads the saved loadout of the player
[player, [missionNamespace, "inventory_var"]] call BIS_fnc_loadInventory;

_null = [false, player] execVM "lib\stamina.sqf";
