//@file Version: 1.3
//@file Name: site_A.sqf
//@file Author: Cael817, GID Positioning System

// Tower 1 base

_pos = [25709.976563,21382.638672,-0.0814495];
_object = createVehicle ["Land_Cargo_Tower_V1_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 44;
_object setPosATL _pos;
_object setVariable ["R3F_LOG_disabled", true, true];
_object enableSimulation false;
_object allowDamage false;

//Tower 1 top
_pos = [25710.396484,21381.375,17.232];
_object = createVehicle ["Land_Cargo_Tower_V1_No1_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 134.6;
_object setPosATL _pos;
_object setVariable ["R3F_LOG_disabled", true, true];
_object enableSimulation false;
_object allowDamage false;

//Tower 2
_pos = [25822.316406,21519.960938,0.0661392];
_object = createVehicle ["Land_Cargo_Tower_V1_No2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 317;
_object setPosATL _pos;
_object setVariable ["R3F_LOG_disabled", true, true];
_object enableSimulation false;
_object allowDamage false;

//Tower 3
_pos = [25553.1875,21166.103516,-0.19228];
_object = createVehicle ["Land_Cargo_Tower_V1_No3_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 130;
_object setPosATL _pos;
_object setVariable ["R3F_LOG_disabled", true, true];
_object enableSimulation false;
_object allowDamage false;

//Tower 4
_pos = [25519.5,21481.375,0.107487];
_object = createVehicle ["Land_Cargo_Tower_V1_No4_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 40;
_object setPosATL _pos;
_object setVariable ["R3F_LOG_disabled", true, true];
_object enableSimulation false;
_object allowDamage false;

