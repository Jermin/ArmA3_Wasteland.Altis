//@file Version: 1.3
//@file Name: site_A.sqf
//@file Author: Cael817, GID Positioning System

//Stock Tower Base
_pos = [16364.788086,12467.355469,6.55987];
_object = createVehicle ["Land_Cargo_Tower_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 183;
_object setPosATL _pos;
_object setVariable ["R3F_LOG_disabled", true, true];
_object enableSimulation false;
_object allowDamage false;

//Stock Tower Top
_pos = [16363.518555,12468.0341797,24.152];
_object = createVehicle ["Land_Cargo_Tower_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 272.6;
_object setPosATL _pos;
_object setVariable ["R3F_LOG_disabled", true, true];
_object enableSimulation false;
_object allowDamage false;


//Tower 1 Base
_pos = [16827.863281,12647.56543,-0.299997];
_object = createVehicle ["Land_Cargo_Tower_V1_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 1.00001;
_object setPosATL _pos;
_object setVariable ["R3F_LOG_disabled", true, true];
_object enableSimulation false;
_object allowDamage false;

//Tower 1 Top
_pos = [16829.0742188,12646.825195,17.1];
_object = createVehicle ["Land_Cargo_Tower_V1_No1_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 90;
_object setPosATL _pos;
_object setVariable ["R3F_LOG_disabled", true, true];
_object enableSimulation false;
_object allowDamage false;

//Tower 2
_pos = [16850.980469,12868.757813,-0.0463371];
_object = createVehicle ["Land_Cargo_Tower_V1_No2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 130;
_object setPosATL _pos;
_object setVariable ["R3F_LOG_disabled", true, true];
_object enableSimulation false;
_object allowDamage false;

//Tower 3
_pos = [17083.277344,12687.982422,-0.193656];
_object = createVehicle ["Land_Cargo_Tower_V1_No3_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;
_object setVariable ["R3F_LOG_disabled", true, true];
_object enableSimulation false;
_object allowDamage false;


//Tower 4
_pos = [16725.753906,12429.0341797,0.187611];
_object = createVehicle ["Land_Cargo_Tower_V1_No4_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 232;
_object setPosATL _pos;
_object setVariable ["R3F_LOG_disabled", true, true];
_object enableSimulation false;
_object allowDamage false;