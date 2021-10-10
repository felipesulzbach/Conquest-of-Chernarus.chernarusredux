_soundname = _this select 0;
_obj = _this select 1;
_isaction = _this select 2;
_nameaction = _this select 3;

if (isNull _obj) then {
    {
        _source = playSound _x;
        _source spawn {
            waitUntil {
                isNull _this
            };
        };
    } forEach _soundname;
} else {
    if (_isaction) then {
        [_obj, _soundname] addAction [_nameaction, {
            execVM {
                _obj = _this select 0;
                _soundname = _this select 1;
                
                [_obj, [_soundname, 100, 1]] remoteExec ["say3D"];
            }
        }];
    } else {}
};

// "Alarm" remoteExec ["playSound"];