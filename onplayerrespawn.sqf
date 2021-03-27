// loads the saved loadout of the player
[player, [missionnamespace, "inventory_var"]] call BIS_fnc_loadinventory;

null=[] spawn {
    _null = [false, player] execVM "lib\stamina.sqf";
}