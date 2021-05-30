[] execVM "briefing.sqf";

if (!(missionnamespace getVariable["run_init", false])) then {
    startLoadingScreen ["waiting for all palyers init mission..."];
}