//@file Version: 1.3
//@file Name: site_A.sqf
//@file Author: Cael817, GID Positioning System

//Internal stairs
_pos = [28902.722656,27392.4375,-2.08695];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 89.9999;
_object setPosASL _pos;
//[_object, 0, 0] call BIS_fnc_setPitchBank;
_object enableSimulation false;

