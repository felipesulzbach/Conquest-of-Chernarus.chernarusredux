_null = [-1] execVM "lib\AL_intro\intro.sqf";

{
	_x SwitchMove "Acts_welcomeOnHUB05_PlayerWalk_3";
} forEach playableUnits;

sleep 17;

{
	_x SwitchMove "Acts_welcomeOnHUB05_PlayerWalk_3";
} forEach playableUnits;

sleep 8;

{
	_x SwitchMove "";
} forEach playableUnits;
