private ["_unit", "_quantity", "_count"];

_unit = _this select 0;
_quantity = _this select 1;
_count = 0;

while {_count < _quantity} do {
    _unit addItemtouniform "rvg_money";
    _count = _count+1;
};