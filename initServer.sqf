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

// schedule flyby ambient jets
[] spawn {
    sleep (7200 + random 3600);
    _justPlayers = allPlayers - entities "HeadlessClient_F";
    (selectRandom _justPlayers) call MIS_flyBy;
};