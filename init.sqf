if ((!isServer) && (player != player)) then {waitUntil {player == player};};

[] spawn {
    while {true} do {
        player enableStamina false;
        player forceWalk false;
        uiSleep 6;
    };
};

setViewDistance 2000;
[] execVM "briefing.sqf";

// Save the initial loadout of all players.
[player, [missionNamespace, "inventory_var"]] call BIS_fnc_saveInventory;

if(!isMultiplayer) then {
    any=[ [
        ["Coloque aqui o titulo da missão","<t align = 'center' size = '1'>%1</t><br/>"],
        ["Stratis","<t align = 'center' size = '0.7'>%1</t><br/>"],
        ["Escreva aqui a sua missão.","<t align = 'center' size = '0.7'>%1</t>"]
    ] ] spawn BIS_fnc_typeText;

    {if(! (isPlayer _x) ) then { deleteVehicle _x; }; } foreach switchableUnits;
};

_null = [] execVM "script\player_animation.sqf";
