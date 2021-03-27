_null = [-1] execVM "lib\AL_intro\intro.sqf";

null=[] spawn {
    sleep 8;
    player switchMove "Acts_welcomeOnHUB05_playerWalk_3";
    sleep 20;
    player switchMove "";
    
    _damagePartlist = ["HitLF2Wheel", "HitLFWheel", "HitRFWheel", "HitRF2Wheel", "HitLMWheel", "HitLBWheel", "HitRMWheel", "HitRBWheel",
    "HitHull", "HitEngine", "HitEngine2"];
    {
        car1 setHitPointDamage[_x, 1];
    } forEach _damagePartlist;
    
    sleep 2;
    
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
}