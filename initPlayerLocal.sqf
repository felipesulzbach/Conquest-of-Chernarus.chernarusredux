setviewDistance 2000;
player enableFatigue false;

_null = [] execVM "lib\earplugs.sqf";

["InitializePlayer", [player]] call BIS_fnc_dynamicgroups;

// Save the initial loadout of player
[player, [missionnamespace, "inventory_var"]] call BIS_fnc_saveinventory;

_null = [false, player] execVM "lib\stamina.sqf";

player setVariable["loaded", true, true];