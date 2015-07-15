//@file Version: 1.3
//@file Name: site_A.sqf
//@file Author: Cael817, GID Positioning System

// Tower 1 base
_pos = [3644.019043,13115.789063,-0.162035];
_object = createVehicle ["Land_Cargo_Tower_V1_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 183;
_object setPosATL _pos;
_object setVariable ["R3F_LOG_disabled", true, true];
_object enableSimulation false;
_object allowDamage false;

//Tower 1 top
_pos = [3642.692139,13116.503906,17.4532];
_object = createVehicle ["Land_Cargo_Tower_V1_No1_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 273;
_object setPosATL _pos;
_object setVariable ["R3F_LOG_disabled", true, true];
_object enableSimulation false;
_object allowDamage false;


//Castle Tower
_pos = [3148.789551,13083.636719,7.46033];
_object = createVehicle ["Land_Cargo_Tower_V3_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 10;
_object setPosATL _pos;
_object setVariable ["R3F_LOG_disabled", true, true];
_object enableSimulation false;
_object allowDamage false;


//Tower 2
_pos = [3395.596924,13124.813477,0.0105591];
_object = createVehicle ["Land_Cargo_Tower_V1_No2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 144;
_object setPosATL _pos;
_object setVariable ["R3F_LOG_disabled", true, true];
_object enableSimulation false;
_object allowDamage false;

//Tower 3

_pos = [3618.232178,12928.44043,-0.00399113];
_object = createVehicle ["Land_Cargo_Tower_V1_No3_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 130;
_object setPosATL _pos;
_object setVariable ["R3F_LOG_disabled", true, true];
_object enableSimulation false;
_object allowDamage false;





