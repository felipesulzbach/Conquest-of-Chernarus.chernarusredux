waitUntil{
    _justPlayers = allPlayers - entities "HeadlessClient_F";
    _i = 0;
    {
        if (_x getVariable["loaded", false]) then {
            _i = _i + 1;
        }
    } forEach _justPlayers;
    
    _i == count allplayers
};

remoteExec["endloadingScreen"];

remoteExec["MIS_fnc_intro"];

missionNamespace setVariable["run_init", true, true];