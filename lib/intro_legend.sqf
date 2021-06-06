// by SULZBACH
_title = _this select 0;
_midle_text = _this select 1;

_now = date;
_yer = str(_now select 0);
_month = str(_now select 1);
_day = str(_now select 2);
_hour = str(_now select 3);
_min = str(_now select 4);

_date = _yer + "/" + _month + "/" + _day + " " + _hour + ":" + _min;

null=[
    [
        [_title, "<t align = 'center' shadow = '1' size = '1.0' font='PuristaBold'>%1</t><br/>"],
        [_midle_text, "<t align = 'center' shadow = '0.7' size = '0.7'>%1</t><br/>", 15],
        [_date, "<t align = 'center' shadow = '0.5' size = '0.5'>%1</t>", 35]
    ]
] spawn BIS_fnc_typetext;