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
    };

    class common {
        file = "functions\common";
        class getAirVehicleClass;
    };
};