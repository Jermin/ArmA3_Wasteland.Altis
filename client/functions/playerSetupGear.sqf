// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: playerSetupGear.sqf
//	@file Author: [GoT] JoSchaap, AgentRev

private ["_player", "_side", "_uniform", "_vest", "_headgear", "_goggles", "_supporterLevel"];
_player = _this;
_side = if (_player == player) then { playerSide } else { side _player };

_supportersEnabled = ["A3W_supportersEnabled"] call isConfigOn;
_supporterLevel = player getVariable ["supporter", 0];

// Clothing is now defined in "client\functions\getDefaultClothing.sqf"

_uniform = [_player, "uniform"] call getDefaultClothing;
_vest = [_player, "vest"] call getDefaultClothing;
_headgear = [_player, "headgear"] call getDefaultClothing;
_goggles = [_player, "goggles"] call getDefaultClothing;

if (_uniform != "") then { _player addUniform _uniform };
if (_vest != "") then { _player addVest _vest };
if (_headgear != "") then { _player addHeadgear _headgear };
if (_goggles != "") then { _player addGoggles _goggles };

sleep 0.1;

// Remove GPS
//_player unlinkItem "ItemGPS";

// Remove radio
//_player unlinkItem "ItemRadio";

// Remove NVG
if (hmd _player != "") then { _player unlinkItem hmd _player };

// Different backpacks for different sides
switch (_side) do { 
	case BLUFOR : 
	{
		if (["_diver_", typeOf _player] call fn_findString != -1) then {
		  _player addBackpack "B_FieldPack_blk";
		} else {
		  _player addBackpack "B_FieldPack_khk";
		};	
		_player addItem "NVGoggles";
	};
	case OPFOR : 
	{
		if (["_diver_", typeOf _player] call fn_findString != -1) then {
		  _player addBackpack "B_FieldPack_blk";
		} else {
		  _player addBackpack "B_FieldPack_ocamo";
		};
		_player addItem "NVGoggles_OPFOR";
	}; 
	default 
	{
		if (["_diver_", typeOf _player] call fn_findString != -1) then {
		  _player addBackpack "B_FieldPack_blk";
		} else {
		  _player addBackpack "B_FieldPack_oli";
		};
		_player addItem "NVGoggles_INDEP";
	}; 
};

// Weapons here
switch (true) do
{
	case (["_medic_", typeOf _player] call fn_findString != -1):
	{
		for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_mag_Tracer";};
		for "_i" from 1 to 3 do {_player addItemToVest "16Rnd_9x21_Mag";};
		for "_i" from 1 to 2 do {_player addItemToVest "SmokeShell";};
		for "_i" from 1 to 4 do {_player addItemToVest "30Rnd_65x39_caseless_mag_Tracer";};
		for "_i" from 1 to 2 do {_player addItemToVest "MiniGrenade";};
		_player addWeapon "arifle_MX_F";
		_player addPrimaryWeaponItem "optic_MRCO";
		_player addWeapon "hgun_P07_F";
	};
	case (["_engineer_", typeOf _player] call fn_findString != -1):
	{
		_player addItemToUniform "16Rnd_9x21_Mag";
		for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_556x45_Stanag_Tracer_Green";};
		for "_i" from 1 to 3 do {_player addItemToVest "16Rnd_9x21_Mag";};
		for "_i" from 1 to 4 do {_player addItemToVest "30Rnd_556x45_Stanag_Tracer_Green";};
		for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
		for "_i" from 1 to 2 do {_player addItemToVest "SmokeShell";};
		for "_i" from 1 to 4 do {_player addItemToVest "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 2 do {_player addItemToBackpack "RPG32_F";};
		_player addWeapon "arifle_Mk20_GL_plain_F";
		_player addPrimaryWeaponItem "optic_MRCO";
		_player addWeapon "launch_RPG32_F";
		_player addWeapon "hgun_P07_F";
	};
	case (["_diver_", typeOf _player] call fn_findString != -1):
	{
		for "_i" from 1 to 3 do {_player addItemToUniform "30Rnd_556x45_Stanag_red";};
		for "_i" from 1 to 3 do {_player addItemToUniform "20Rnd_556x45_UW_mag";};
		_player addItemToBackpack "16Rnd_9x21_Mag";
		for "_i" from 1 to 2 do {_player addItemToUniform "16Rnd_9x21_Mag";};
		for "_i" from 1 to 2 do {_player addItemToUniform "SmokeShell";};
		for "_i" from 1 to 2 do {_player addItemToBackpack "30Rnd_556x45_Stanag_red";};
		for "_i" from 1 to 2 do {_player addItemToBackpack "20Rnd_556x45_UW_mag";};
		for "_i" from 1 to 2 do {_player addItemToBackpack "MiniGrenade";};
		_player addItemToBackpack "SatchelCharge_Remote_Mag";
		for "_i" from 1 to 2 do {_player addItemToBackpack "APERSBoundingMine_Range_Mag";};
		_player addWeapon "arifle_SDAR_F";
		_player addWeapon "hgun_P07_F";
		_player addWeapon "Binocular";
	};
	case (["_sniper_", typeOf _player] call fn_findString != -1):
	{
		for "_i" from 1 to 3 do {_player addItemToUniform "20Rnd_762x51_Mag";};
		for "_i" from 1 to 3 do {_player addItemToVest "16Rnd_9x21_Mag";};
		for "_i" from 1 to 2 do {_player addItemToVest "20Rnd_762x51_Mag";};
		for "_i" from 1 to 2 do {_player addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_player addItemToVest "MiniGrenade";};
		_player addItemToBackpack "APERSTripMine_Wire_Mag";
		_player addItemToBackpack "APERSBoundingMine_Range_Mag";
		for "_i" from 1 to 2 do {_player addItemToBackpack "ClaymoreDirectionalMine_Remote_Mag";};
		_player addWeapon "srifle_EBR_F";
		_player addPrimaryWeaponItem "optic_SOS";
		_player addPrimaryWeaponItem "bipod_01_F_snd";
		_player addWeapon "hgun_P07_F";
	};
};

_player addItem "FirstAidKit";

// Loadouts here
if (_supportersEnabled && _supporterLevel > 0) then
{_this call supporters;};

switch (true) do
{
	case (["_medic_", typeOf _player] call fn_findString != -1):
	{
		_player removeItem "FirstAidKit";
		_player addItem "Medikit";
	};
	case (["_engineer_", typeOf _player] call fn_findString != -1):
	{
		_player addItem "MineDetector";
		_player addItem "Toolkit";
	};
	case (["_sniper_", typeOf _player] call fn_findString != -1):
	{
		if ({_x in ["Binocular", "Rangefinder", "Laserdesignator", "Laserdesignator_02", "Laserdesignator_03", "Laserdesignator_01_khk_F", "Laserdesignator_02_ghex_F"]} count assignedItems _player  == 0) then {
		  _player addWeapon "Rangefinder";
		};
	};
};

if (_player == player) then
{
	thirstLevel = 100;
	hungerLevel = 100;
};
