setviewDistance 2000;
[] execVM "briefing.sqf";

if (hasinterface) then {
    if (player != player) then { waitUntil { player == player }; };
    
    // Save the initial loadout of all players
    [player, [missionnamespace, "inventory_var"]] call BIS_fnc_saveinventory;
    
    _null = [false, player] execVM "lib\stamina.sqf";
    
    _null = [] execVM "script\player_intro.sqf";
}