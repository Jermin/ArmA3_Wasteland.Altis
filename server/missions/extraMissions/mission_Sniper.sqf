// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: mission_Sniper.sqf
//	@file Author: JoSchaap, AgentRev, LouD

if (!isServer) exitwith {};
#include "extraMissionDefines.sqf";

private ["_positions", "_box1", "_box2", "_missionPos", "_randomBox", "_randomBox2"];

_setupVars =
{
	_missionType = "Sniper Nest";
	_positions = [[12879.5,16773.3,0],[8951.24,20077.1,0],[3185.9,13146.6,0],[17944.4,12226.1,0],[9520.34,15741.5,0]];

	_missionPos = _positions call BIS_fnc_SelectRandom;
};

_setupObjects =
{
	_aiGroup = createGroup CIVILIAN;
	[_aiGroup,_missionPos] call createsniperGroup;

	_aiGroup setCombatMode "RED";
	_aiGroup setBehaviour "COMBAT";
	
	_missionHintText = "A Sniper Nest has been spotted. Head to the marked area and take them out! Be careful they are fully armed and dangerous!";
};

_waitUntilMarkerPos = nil;
_waitUntilExec = nil;
_waitUntilCondition = nil;

_failedExec =
{
	// Mission failed
};

_successExec =
{
	// Mission completed
	_randomBox = selectRandom ["mission_USLaunchers","mission_Main_A3snipers","airdrop_DLC_LMGs","airdrop_DLC_Rifles_apex"];
	_randomBox2 = selectRandom ["mission_USSpecial","airdrop_Snipers","airdrop_DLC_Rifles","airdrop_Launchers"];
	_box1 = createVehicle ["Box_East_WpsSpecial_F", _missionPos, [], 2, "None"];
	_box1 setDir random 360;
	[_box1, _randomBox] call fn_refillbox;
	
	_box2 = createVehicle ["Box_IND_WpsSpecial_F", _missionPos, [], 2, "None"];
	_box2 setDir random 360;
	[_box2, _randomBox2] call fn_refillbox;

	{ _x setVariable ["R3F_LOG_disabled", false, true] } forEach [_box1, _box2];
	
	_successHintMessage = format ["The snipers are dead. Well Done."];
};

_this call extraMissionProcessor;