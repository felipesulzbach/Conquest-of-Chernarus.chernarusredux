_null = [-1] execVM "lib\AL_intro\intro.sqf";

uiSleep 8;
player switchMove "Acts_welcomeOnHUB05_playerWalk_3";
uiSleep 20;
player switchMove "";

uiSleep 2;

_now = date;
_yer = str(_now select 0);
_month = str(_now select 1);
_day = str(_now select 2);
_hour = str(_now select 3);
_min = str(_now select 4);

_date = _yer + "/" + _month + "/" + _day + " " + _hour + ":" + _min;

null=[
    "Chernarus",
    "Kamenka city",
    "",
    _date
] spawn BIS_fnc_infotext;