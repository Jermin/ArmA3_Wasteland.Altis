// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2016 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: fn_deathMessage.sqf
//	@file Author: AgentRev

if (round difficultyOption "deathMessages" > 0) exitWith {};

params
[
	["_mode", 0, [0]], // 0 = server-side processing, 1 = broadcast message from server to all clients
	["_victim", objNull, [objNull,""]], // victim unit or name string
	["_killer", objNull, [objNull,""]], // killer unit or name string
	["_friendlyFire", false, [false]], // friendly fire boolean, determines if teamkill message needs to be used
	["_aiKiller", false, [false]], // AI killer boolean, ignored if mode = 0
	["_cause", "", [""]], // cause of death string, ignored if mode = 0
	["_v", objNull, [objNull,""]], // victim unit, ignored if mode = 0
	["_k", objNull, [objNull,""]] // killer unit, ignored if mode = 0
];

scopeName "fn_deathMessage";

if (_mode isEqualTo 0) then
{
	private _victimName = _victim getVariable ["A3W_handleDisconnect_name", ""];

	if (_victimName isEqualTo "") then
	{
		if (!alive _victim && !isPlayer _victim) exitWith // "Error: No unit"
		{
			breakOut "fn_deathMessage";
		};

		_victimName = name _victim;
	};

	_causeLocal = _victim getVariable ["A3W_deathCause_local", []];
	_causeRemote = _victim getVariable ["A3W_deathCause_remote", []];

	_causeLocal params [["_cLocalString","",[""]], ["_cLocalTime",nil,[0]]]; // _cLocalTime nil = force use local cause
	_causeRemote params [["_cRemoteString","",[""]], ["_cRemoteTime",2e11,[0]]];

	// death cause tagged by remote sources have an expiry time of 10 secs (serverTime)
	private _causeParams = [_causeLocal, _causeRemote] select (!isNil "_cLocalTime" && {_cRemoteTime < _cLocalTime && _cRemoteTime > _cLocalTime - 10});

	if ((_causeParams param [0,""]) isEqualTo "") then
	{
		if !("" in [_cLocalString, _cRemoteString]) then
		{
			_causeParams = [_causeLocal, _causeRemote] select (_cLocalString isEqualTo ""); // fallback
		};
	};

	_cause = _causeParams param [0,""];

	if (_cause == "slay") then
	{
		_killer = _causeParams param [2,objNull,[objNull]]; // no friendly fire handling needed here
	};

	private _killerName = if (alive _killer || isPlayer _killer) then { name _killer } else { "" };
	_aiKiller = (!isNull _killer && !isPlayer _killer && isNil {_killer getVariable "cmoney"});

	[1, _victimName, _killerName, _friendlyFire, _aiKiller, _cause, _victim, _killer] remoteExecCall ["A3W_fnc_deathMessage"];
}
else
{
	if (!hasInterface) exitWith {};
	if !([_victim,_killer] isEqualTypeAll "") exitWith {};

	// FOR CONSISTENT USER EXPERIENCE, MESSAGES SHOULD BE LOWERCASE, INVARIABLE, AND EXPLICIT (NO PUNS OR EUPHEMISMS), JUST LIKE DEFAULT ARMA MESSAGES
	private _message = switch (_cause) do
	{
		case "headshot": // enemy player headshot with A3W_headshotNoRevive = 1;
		{
			if (_killer != "") then { format ["%1 headshot %2", _killer, _victim] }
			else                    { format ["%1 was headshot", _victim] } // not supposed to happen, but just in case
		};

		case "slay": // finished off by enemy while bleeding
		{
			if (_killer != "") then { format ["%1 finished off %2", _killer, _victim] }
			else                    { format ["%1 was finished off", _victim] } // not supposed to happen, but just in case
		};

		case "bleedout": { format ["%1 bled out", _victim] }; // bleedout timer ran out, gave up while bleeding

		case "suicide": { format ["%1 suicided", _victim] }; // respawned from pause menu, crashed vehicle, last resort, player setDamage 1

		case "drown": { format ["%1 drowned", _victim] }; // ran out of oxygen underwater, or sank while bleeding

		case "forcekill": { format ["%1 was killed", _victim] }; // admin slay, antihack/teamkill kick

		default
		{
			switch (true) do
			{
				case (_aiKiller):           { format ["%1 was killed by AI", _victim] }; // vehicle destroyed by AI
				case (_killer != ""): 
				{
					if (_friendlyFire) then { format ["%1 teamkilled %2", _killer, _victim] } // destroyed friendly vehicle, crashed vehicle with friendlies on board
					else                    { format ["%1 killed %2", _killer, _victim] } // destroyed enemy vehicle
				};
				default
				{
					if (_friendlyFire) then { format ["%1 was teamkilled", _victim] } // not supposed to happen, but just in case
					else                    { format ["%1 died", _victim] } // disconnected while bleeding, any other cause not covered above
				};
			}
		};
	};

	systemChat _message;

	private ["_weapon", "_distance", "_disttxt", "_killercolor", "_dyntxt"];

	if (_cause == "headshot") then {
	  if (_killer != "") then {
		if (!_friendlyFire && local _v) then {

			_disttxt = "";
			_killercolor = "";
			_dyntxt = "";
			_distance = round (_v distance _k);
			_weapon = currentWeapon _k;

			switch (str (side _k)) do { 
				case "WEST" : {  _killercolor = "#004486" };
				case "EAST" : {  _killercolor = "#6d0004" };
				case "GUER" : {  _killercolor = "#016d00" };
				default {  _killercolor = "#ca2bd8" };
			};

			switch (true) do { 
				case (_distance < 100)) : {  _disttxt = "Less than 100" }; 
				case (_distance < 200)) : {  _disttxt = "Over 100" };
				case (_distance < 300)) : {  _disttxt = "Over 200" };
				case (_distance < 400)) : {  _disttxt = "Over 300" };
				case (_distance < 500)) : {  _disttxt = "Over 400" };
				case (_distance < 600)) : {  _disttxt = "Over 500" };
				case (_distance < 700)) : {  _disttxt = "Over 600" };
				case (_distance < 800)) : {  _disttxt = "Over 700" };
				case (_distance < 900)) : {  _disttxt = "Over 800" };
				case (_distance < 1000)) : {  _disttxt = "Over 900" };
				default {  _disttxt = str _distance }; 
			};

			//if killer is not vehicle
			_txt = (gettext (configFile >> 'cfgWeapons' >> _weapon >> 'displayName'));
			_pic = (gettext (configFile >> 'cfgWeapons' >> _weapon >> 'picture'));
			_vehicleKillerType = typeOf(vehicle _k);

			//if killer is a vehicle type, then we get vehicle picture
			{
				if(_vehicleKillerType isKindOf _x)exitWith{
					_pic = (gettext (configFile >> 'CfgVehicles' >> _vehicleKillerType >> 'picture'));
					//and if he was in a driver position of the vehicle, we get vehicle displayName aswell
					if(_k isEqualTo (driver(vehicle _k)))then{
						_txt = (gettext (configFile >> 'CfgVehicles' >> _vehicleKillerType >> 'displayName'));
					};
				};
			}count ["LandVehicle","Air","Ship"];

			//if weapon is a horn classname, then the killer was also driver, so we get vehicle displayName instead of weapon displayName
			if(_weapon in ["Horn","MiniCarHorn","SportCarHorn","TruckHorn2","TruckHorn","BikeHorn","CarHorn","TruckHorn3"])then{
				_txt = (gettext (configFile >> 'CfgVehicles' >> _vehicleKillerType >> 'displayName'));
			};

			_dyntxt = format["
			<t size='0.5'align='left'shadow='1'> You were headshot by  </t>
			<t size='0.75'align='left'shadow='1'color='%1'>%2</t><br/>
			<t size='0.45'align='left'shadow='1'> with: </t>
			<t size='0.5'align='left'shadow='1'color='#FFCC00'>%3</t>
			<t size='0.45'align='left'shadow='1'> - Distance: </t>
			<t size='0.5'align='left'shadow='1'color='#FFCC00'>%4m</t><br/>
			<img size='2.5'align='left'shadow='1'image='%5'/>
			",
			_killercolor,
			_killer,
			_txt,
			_disttxt,
			_pic
			];

			[_dyntxt,[safezoneX + 0.01 * safezoneW,2.0],[safezoneY + 0.01 * safezoneH,0.3],15,0.5] spawn BIS_fnc_dynamicText;
		};
	  };
	};

	if !(_cause in ["headshot", "slay", "bleedout", "suicide", "drown", "forcekill"]) then {
	  if (_killer != "") then {
	    if (!_friendlyFire) then {
	      if (local _v) then {

			_disttxt = "";
			_killercolor = "";
			_dyntxt = "";
			_distance = round (_v distance _k);
			_weapon = currentWeapon _k;

			switch (str (side _k)) do { 
				case "WEST" : {  _killercolor = "#004486" };
				case "EAST" : {  _killercolor = "#6d0004" };
				case "GUER" : {  _killercolor = "#016d00" };
				default {  _killercolor = "#ca2bd8" };
			};

			switch (true) do { 
				case (_distance < 100)) : {  _disttxt = "Less than 100" }; 
				case (_distance < 200)) : {  _disttxt = "Over 100" };
				case (_distance < 300)) : {  _disttxt = "Over 200" };
				case (_distance < 400)) : {  _disttxt = "Over 300" };
				case (_distance < 500)) : {  _disttxt = "Over 400" };
				case (_distance < 600)) : {  _disttxt = "Over 500" };
				case (_distance < 700)) : {  _disttxt = "Over 600" };
				case (_distance < 800)) : {  _disttxt = "Over 700" };
				case (_distance < 900)) : {  _disttxt = "Over 800" };
				case (_distance < 1000)) : {  _disttxt = "Over 900" };
				default {  _disttxt = str _distance }; 
			};

			//if killer is not vehicle
			_txt = (gettext (configFile >> 'cfgWeapons' >> _weapon >> 'displayName'));
			_pic = (gettext (configFile >> 'cfgWeapons' >> _weapon >> 'picture'));
			_vehicleKillerType = typeOf(vehicle _k);

			//if killer is a vehicle type, then we get vehicle picture
			{
				if(_vehicleKillerType isKindOf _x)exitWith{
					_pic = (gettext (configFile >> 'CfgVehicles' >> _vehicleKillerType >> 'picture'));
					//and if he was in a driver position of the vehicle, we get vehicle displayName aswell
					if(_k isEqualTo (driver(vehicle _k)))then{
						_txt = (gettext (configFile >> 'CfgVehicles' >> _vehicleKillerType >> 'displayName'));
					};
				};
			}count ["LandVehicle","Air","Ship"];

			//if weapon is a horn classname, then the killer was also driver, so we get vehicle displayName instead of weapon displayName
			if(_weapon in ["Horn","MiniCarHorn","SportCarHorn","TruckHorn2","TruckHorn","BikeHorn","CarHorn","TruckHorn3"])then{
				_txt = (gettext (configFile >> 'CfgVehicles' >> _vehicleKillerType >> 'displayName'));
			};

			_dyntxt = format["
			<t size='0.5'align='left'shadow='1'> You were killed by  </t>
			<t size='0.75'align='left'shadow='1'color='%1'>%2</t><br/>
			<t size='0.45'align='left'shadow='1'> with: </t>
			<t size='0.5'align='left'shadow='1'color='#FFCC00'>%3</t>
			<t size='0.45'align='left'shadow='1'> - Distance: </t>
			<t size='0.5'align='left'shadow='1'color='#FFCC00'>%4m</t><br/>
			<img size='2.5'align='left'shadow='1'image='%5'/>
			",
			_killercolor,
			_killer,
			_txt,
			_disttxt,
			_pic
			];

			[_dyntxt,[safezoneX + 0.01 * safezoneW,2.0],[safezoneY + 0.01 * safezoneH,0.3],15,0.5] spawn BIS_fnc_dynamicText;
		};
	    };
	  };
	};
};
