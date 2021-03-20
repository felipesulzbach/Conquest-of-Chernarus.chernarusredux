if ((!isServer) && (player != player)) then {waitUntil {player == player};};

[] spawn {
    // No fatigue
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


// Stay in revive until bleed out
if (isServer) then {
    _pdeath = param [0,1,[999]];

    if (_pdeath == 0) then {};
    if (_pdeath == 1) then {
        player addEventHandler ["Dammaged", {
            params ["_unit"];
            if (lifeState _unit == "INCAPACITATED") then {
                _unit allowDamage false;

                null = [_unit] spawn {
                    params ["_guy"];
                    waitUntil {sleep 1; lifeState _guy != "INCAPACITATED" || isNull _guy || !alive _guy};

                    if (!isNull _guy && alive _guy) then {
                        _guy allowDamage true;
                    };
                };
            };

            if ( lifeState _unit == "INCAPACITATED" ) then {
                _damage = 0;
            } else {
                _this set[ 2, _damage ];
                _damage = _this call bis_fnc_reviveEhHandleDamage;
            };
        }];
    };
};

if(!isMultiplayer) then {
    any=[ [
        ["Coloque aqui o titulo da missão","<t align = 'center' size = '1'>%1</t><br/>"],
        ["Stratis","<t align = 'center' size = '0.7'>%1</t><br/>"],
        ["Escreva aqui a sua missão.","<t align = 'center' size = '0.7'>%1</t>"]
    ] ] spawn BIS_fnc_typeText;

    {if(! (isPlayer _x) ) then { deleteVehicle _x; }; } foreach switchableUnits;
};
