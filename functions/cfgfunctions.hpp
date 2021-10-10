class MISSION {
    tag = "MIS";

    class intro {
        file = "functions\intro";
        class intro {description = "Run Intro"};
    };

    class ambient {
        file = "functions\ambient";
        class flyBy;
        class ash;
        class hideLayer;
    };

    class common {
        file = "functions\common";
        class getAirVehicleClass;
        class recruitUnits;
        class addMoney;
        class vehicleDestroy;
        class setTrader;
    };
};