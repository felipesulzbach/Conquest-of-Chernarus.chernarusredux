// by ALIAS
// nul = [JIP] execVM "AL_intro\intro.sqf";

waitUntil {time > 0};

_jip_enable    = _this select 0;

[[_jip_enable],"lib\AL_intro\time_srv.sqf"] remoteExec ["execVM"];
waitUntil {!isNil "curr_time"};

if (!hasInterface) exitWith {};

if ((!curr_time) or (_jip_enable<0)) then {
    cutText ["Kamenka", "BLACK IN", 10];
    playsound "intro_music";

    /* ----- how to use camera script -----------------------------------------------------------------------
    _camera_shot = [position_1_name, position_2_name, target_name, duration, zoom_level1, zoom_level_2, attached, x_rel_coord, y_rel_coord, z_rel_coord,last_shot] execVM "camera_work.sqf";

    Where
    _camera_shot    - string, is the name/number of the camera shot, you can have as many as you want see examples from down bellow
    position_1_name - string, where camera is created, replace it with the name of the object you want camera to start from
    position_2_name - string, the object where you want camera to move, if you don't want to move from initial position put the same name as for position_1_name
    target_name       - string, name of the object you want the camera to look at
    duration         - seconds, how long you want the camera to function on current shot
    zoom_level_1     - takes values from 0.01 to 2, FOV (field of view) value for initial position
    zoom_level_2    - takes values from 0.01 to 2, FOV value for second position, if you don't to change you can give the same value as you did for zoom_level_1
    attached        - boolean, if you want to attach camera to an moving object its value has to be true, otherwise must be false
                        in this case position_1_name must have the same value as position_2_name
    x_rel_coord        - meters, relative position to the attached object on x coordinate
    y_rel_coord        - meters, relative position to the attached object on y coordinate
    z_rel_coord        - meters, relative position to the attached object on z coordinate
    last_shot        - boolean, true if is the last shot in your movie, false otherwise
    -----------------------------------------------------------------------------------------------------------*/

    // - do not edit or delete the lines downbelow, this line must be before first camera shot
    loopdone = false;
    while {!loopdone} do {
        _firstshot = [cam1, cam2, target1, 15, 0.5, 0.08, false, 0, 0, 0,TRUE] execVM "lib\AL_intro\camera_work.sqf";
        waitUntil {scriptdone _firstshot};

        //_firstshot = [cam1, cam2, target1, 9, 0.3, 0.1, false, 0, 0, 0,FALSE] execVM "lib\AL_intro\camera_work.sqf";
        //waitUntil {scriptdone _firstshot};

        //_secondshot = [cam3, cam3, target2, 10, 1, 1, false, 0, 0, 0,FALSE] execVM "lib\AL_intro\camera_work.sqf";
        //waitUntil {scriptdone _secondshot};

        //_thirdshot = [cam4, cam4, target3, 15, 1, 1, true, 0, -6, 3,TRUE] execVM "lib\AL_intro\camera_work.sqf";
        //waitUntil {scriptdone _thirdshot};
    };

    cutText [" ", "BLACK IN", 3];
    _camera = "camera" camCreate (getpos player);
    _camera cameraeffect ["terminate", "back"];
    camDestroy _camera;
    "dynamicBlur" ppEffectEnable true;   
    "dynamicBlur" ppEffectAdjust [100];   
    "dynamicBlur" ppEffectCommit 0;     
    "dynamicBlur" ppEffectAdjust [0.0];  
    "dynamicBlur" ppEffectCommit 4;
};