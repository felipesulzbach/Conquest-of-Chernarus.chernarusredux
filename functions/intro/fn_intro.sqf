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
    
    null = ["KAMENKA CITY", "Abandoned"] execVM "lib\intro_legend.sqf";
}