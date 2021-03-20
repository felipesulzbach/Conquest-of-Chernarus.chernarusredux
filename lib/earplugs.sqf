//    VAS EARPLUGS v2.0   //
//lib\Earplugs.sqf//
//      MykeyRM [AW]      //
////////////////////////////

sleep 1;

_PlugsTakenHint = "<t color='#ff9d00' size='1.3' shadow='1' shadowColor='#000000' align='center'>*** Earplugs received *** </t>";
_howtoHint = "<t size='1' shadow='1' shadowColor='#000000' align='center'> [Pause/Break] key to Insert and Remove</t>";

hint parseText (_PlugsTakenHint + _howtoHint);
PlugsIN = 2;
//Add keybind to player [Pause/Break] key - US keyboard.
MEP_KD = (findDisplay 46) displayAddEventHandler ["KeyDown", "if (_this select 1 == 197) then {
    switch (PlugsIN) do {
        case 1: { PlugsIN = 2; 2 fadeSound 1; player groupChat 'EARPLUGS REMOVED'; };
        case 2: { PlugsIN = 1; 2 fadeSound 0.2; player groupChat 'EARPLUGS FITTED'; };
        default { };
    };
}"];
