// loads the saved loadout of the player
[player, [missionnamespace, "inventory_var"]] call BIS_fnc_saveinventory;

null=[] spawn {
    sleep 6;
    hideBody player;
}