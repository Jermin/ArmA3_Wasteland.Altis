// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: sellVehicle.sqf
//	@file Author: AgentRev
//  @file edited: CRE4MPIE
//  @credits to: Cael817, Lodac, Wiking, Gigatek (original auth of chopshop)


#include "sellIncludesStart.sqf";

storeSellingHandle = _this spawn
{
#define CHOPSHOP_PRICE_RELATIONSHIP 2
#define VEHICLE_MAX_SELLING_DISTANCE 50

private ["_vehicle","_type", "_price", "_confirmMsg", "_playerMoney", "_text"];

_storeNPC = _this select 0;
_vehicle = objectFromNetId (player getVariable ["lastVehicleRidden", ""]);
_type = typeOf _vehicle;
_playerMoney = player getVariable "cmoney";
_price = 500;
_objClass = typeOf _vehicle;
_objName = getText (configFile >> "CfgVehicles" >> _objClass >> "displayName");

	if (isNull _vehicle) exitWith
	{
		playSound "FD_CP_Not_Clear_F";
		["Your previous vehicle does not exist anymore.", "Error"] call  BIS_fnc_guiMessage;
	};

	if (_vehicle distance _storeNPC > VEHICLE_MAX_SELLING_DISTANCE) exitWith
	{
		playSound "FD_CP_Not_Clear_F";
		[format ['"%1" is further away than %2m from the store.', _objname, VEHICLE_MAX_SELLING_DISTANCE], "Error"] call  BIS_fnc_guiMessage;
	};
	
{	
	if (_type == _x select 1) then
	{	
	_price = _x select 2;
	_price = (ceil ((_price / CHOPSHOP_PRICE_RELATIONSHIP) / 5)) * 5;
	};

	if (_type == "B_Plane_CAS_01_F" || _type == "O_Plane_CAS_02_F" || _type == "B_Heli_Attack_01_F") then
	{	
		_price = 25000;
	};

	if (_type == "O_Heli_Light_02_F") then
	{	
		_price = 15000;
	};
	
} forEach (call allVehStoreVehicles);

	if (!isNil "_price") then 
	{
		// Add total sell value to confirm message
		_confirmMsg = format ["Selling %1 will give you $%2 for:<br/>", _objName, _price];
		_confirmMsg = _confirmMsg + format ["<br/><t font='EtelkaMonospaceProBold'>1</t> x %1", _objName];

		// Display confirm message
		if ([parseText _confirmMsg, "Confirm", "SELL", true] call BIS_fnc_guiMessage) then
		{	
			deleteVehicle _vehicle;
			player setVariable["cmoney",(player getVariable "cmoney")+_price,true];
			_text = format ["%1 has been sold!", _objname];
			[_text, 10] call mf_notify_client;
			
		if (["A3W_playerSaving"] call isConfigOn) then
		{
				[] spawn fn_savePlayerData;
		};
		 };
	} else {
		hint parseText "<t color='#ffff00'>An unknown error occurred.</t><br/>Cancelled.";
		playSound "FD_CP_Not_Clear_F";
	};
};	
		
#include "sellIncludesEnd.sqf";