// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: spawnStoreObject.sqf
//	@file Author: AgentRev
//	@file Created: 11/10/2013 22:17
//	@file Args:

if (!isServer) exitWith {};

scopeName "spawnStoreObject";
private ["_player", "_class", "_marker", "_key", "_isGenStore", "_isGunStore", "_isVehStore", "_timeoutKey", "_objectID", "_playerSide", "_objectsArray", "_itemEntry", "_itemPrice", "_safePos", "_object"];

_player = param [0, objNull, [objNull]];
_class = param [1, "", [""]];
_marker = param [2, "", [""]];
_key = param [3, "", [""]];

_isGenStore = ["GenStore", _marker] call fn_startsWith;
_isGunStore = ["GunStore", _marker] call fn_startsWith;
_isVehStore = ["VehStore", _marker] call fn_startsWith;

if (_key != "" && isPlayer _player && {_isGenStore || _isGunStore || _isVehStore}) then
{
	_timeoutKey = _key + "_timeout";
	_objectID = "";
	private _playerGroup = group _player;
	_playerSide = side _playerGroup;

	if (_isGenStore || _isGunStore) then
	{
		_marker = _marker + "_objSpawn";

		switch (true) do
		{
			case _isGenStore: { _objectsArray = genObjectsArray };
			case _isGunStore: { _objectsArray = staticGunsArray };
		};

		if (!isNil "_objectsArray") then
		{
			{
				if (_class == _x select 1) exitWith
				{
					_itemEntry = _x;
				};
			} forEach (call _objectsArray);
		};
	};

	if (_isVehStore) then
	{
		// LAND VEHICLES
		{
			{
				if (_class == _x select 1) exitWith
				{
					_itemEntry = _x;
					_marker = _marker + "_landSpawn";
				};
			} forEach (call _x);
		} forEach [landArray, armoredArray, tanksArray];

		// SEA VEHICLES
		if (isNil "_itemEntry") then
		{
			{
				if (_class == _x select 1) exitWith
				{
					_itemEntry = _x;
					_marker = _marker + "_seaSpawn";
				};
			} forEach (call boatsArray);
		};

		// HELICOPTERS
		if (isNil "_itemEntry") then
		{
			{
				if (_class == _x select 1) exitWith
				{
					_itemEntry = _x;
					_marker = _marker + "_heliSpawn";
				};
			} forEach (call helicoptersArray);
		};

		// AIRPLANES
		if (isNil "_itemEntry") then
		{
			{
				if (_class == _x select 1) exitWith
				{
					_itemEntry = _x;
					_marker = _marker + "_planeSpawn";
				};
			} forEach (call planesArray);
		};
	};

	if (!isNil "_itemEntry" && markerShape _marker != "") then
	{
		_itemPrice = _itemEntry select 2;
		_skipSave = "SKIPSAVE" in (_itemEntry select [3,999]);

		/*if (_class isKindOf "Box_NATO_Ammo_F") then
		{
			switch (side _player) do
			{
				case OPFOR:       { _class = "Box_East_Ammo_F" };
				case INDEPENDENT: { _class = "Box_IND_Ammo_F" };
			};
		};*/

		if (_player getVariable ["cmoney", 0] >= _itemPrice) then
		{
			_safePos = (markerPos _marker) findEmptyPosition [0, 50, _class];
			if (count _safePos == 0) then { _safePos = markerPos _marker };

			if (_player getVariable [_timeoutKey, true]) then { breakOut "spawnStoreObject" }; // Timeout

			_object = createVehicle [_class, _safePos, [], 0, "None"];

			if (_player getVariable [_timeoutKey, true]) then // Timeout
			{
				deleteVehicle _object;
				breakOut "spawnStoreObject";
			};

			_objectID = netId _object;
			_object setVariable ["A3W_purchasedStoreObject", true];
			_object setVariable ["ownerUID", getPlayerUID _player, true];
			_object setVariable ["R3F_LOG_Disabled", false, true];
			_object setVariable ["ownerName", name _player, true];

			private _isUAV = (round getNumber (configFile >> "CfgVehicles" >> _class >> "isUav") > 0);

			if (_isUAV) then
			{
				createVehicleCrew _object;

				//assign AI to the vehicle so it can actually be used
				[_object, _playerSide, _playerGroup] spawn
				{
					params ["_uav", "_playerSide", "_playerGroup"];

					_grp = [_uav, _playerSide] call fn_createCrewUAV;

					if (isNull (_uav getVariable ["ownerGroupUAV", grpNull])) then
					{
						_uav setVariable ["ownerGroupUAV", _playerGroup, true]; // not currently used
					};
				};
			};

			if (isPlayer _player && !(_player getVariable [_timeoutKey, true])) then
			{
				_player setVariable [_key, _objectID, true];
			}
			else // Timeout
			{
				if (!isNil "_object") then { deleteVehicle _object };
				breakOut "spawnStoreObject";
			};

			if (_object isKindOf "AllVehicles" && !(_object isKindOf "StaticWeapon")) then
			{
				_object setPosATL [_safePos select 0, _safePos select 1, 0.05];
				_object setVelocity [0,0,0.01];
				// _object spawn cleanVehicleWreck;
				_object setVariable ["A3W_purchasedVehicle", true, true];

				if (["A3W_vehicleLocking"] call isConfigOn && !_isUAV) then
				{
					[_object, 2] call A3W_fnc_setLockState; // Lock
				};
			};

			_object setDir (if (_object isKindOf "Plane") then { markerDir _marker } else { random 360 });

			//_isDamageable = !(_object isKindOf "ReammoBox_F"); // ({_object isKindOf _x} count ["AllVehicles", "Lamps_base_F", "Cargo_Patrol_base_F", "Cargo_Tower_base_F"] > 0);
			_isDamageable = !({_object isKindOf _x} count ["ReammoBox_F", "Lamps_base_F", "Land_Pier_Box_F", "Land_Crane_F", "Land_Cargo_Tower_V1_F", "Land_Cargo_Patrol_V1_F", "Land_spp_Tower_F", "Land_i_Addon_03_V1_F", "Land_i_Addon_03mid_V1_F", "Land_i_Addon_04_V1_F"] > 0);

			[_object] call vehicleSetup;
			_object allowDamage _isDamageable;
			_object setVariable ["allowDamage", _isDamageable, true];

			clearBackpackCargoGlobal _object;

			// don't need this anymore at all
			/*switch (true) do
			{
				case ({_object isKindOf _x} count ["Box_NATO_AmmoVeh_F", "Box_East_AmmoVeh_F", "Box_IND_AmmoVeh_F"] > 0):
				{
					_object setAmmoCargo 5;
				};

				// Add food to bought food sacks.
				case ({_object isKindOf _x} count ["Land_Sacks_goods_F"] > 0):
				{
					_object setVariable ["food", 50, true];
				};
				
				// Add water to bought water barrels.
				case ({_object isKindOf _x} count ["Land_BarrelWater_F"] > 0):
				{
					_object setVariable ["water", 50, true];
				};

				case (_object isKindOf "O_Heli_Transport_04_ammo_F"):
				{
					_object setAmmoCargo 10;
				};

				case ({_object isKindOf _x} count ["B_Truck_01_ammo_F", "O_Truck_02_Ammo_F", "O_Truck_03_ammo_F", "I_Truck_02_ammo_F"] > 0):
				{
					_object setAmmoCargo 25;
				};

				case ({_object isKindOf _x} count ["C_Van_01_fuel_F", "I_G_Van_01_fuel_F", "O_Heli_Transport_04_fuel_F"] > 0):
				{
					_object setFuelCargo 10;
				};

				case ({_object isKindOf _x} count ["B_Truck_01_fuel_F", "O_Truck_02_fuel_F", "O_Truck_03_fuel_F", "I_Truck_02_fuel_F"] > 0):
				{
					_object setFuelCargo 25;
				};

				case (_object isKindOf "Offroad_01_repair_base_F"):
				{
					_object setRepairCargo 5;
				};

				case (_object isKindOf "O_Heli_Transport_04_repair_F"):
				{
					_object setRepairCargo 10;
				};

				case (_object isKindOf "B_Plane_CAS_01_F"):
				{
					_object setVehicleAmmoDef 0;
					_object addMagazine "1000Rnd_Gatling_30mm_Plane_CAS_01_F";
					_object addMagazine "2Rnd_Missile_AA_04_F";
					_object addMagazine ["6Rnd_Missile_AGM_02_F", 3];
					_object addMagazine "7Rnd_Rocket_04_HE_F";
					_object addMagazine "7Rnd_Rocket_04_AP_F";
					_object addMagazine "4Rnd_Bomb_04_F";
					_object addMagazineTurret ["120Rnd_CMFlare_Chaff_Magazine", [-1]];
				};

				case (_object isKindOf "O_Plane_CAS_02_F"):
				{
					_object setVehicleAmmoDef 0;
					_object addMagazine "500Rnd_Cannon_30mm_Plane_CAS_02_F";
					_object addMagazine "2Rnd_Missile_AA_03_F";
					_object addMagazine ["4Rnd_Missile_AGM_01_F", 3];
					_object addMagazine "20Rnd_Rocket_03_HE_F";
					_object addMagazine "20Rnd_Rocket_03_AP_F";
					_object addMagazine "2Rnd_Bomb_03_F";
					_object addMagazineTurret ["120Rnd_CMFlare_Chaff_Magazine", [-1]];
				};
					
				case (_object isKindOf "B_UAV_02_F"):
				{
					_object setVehicleAmmoDef 0;
					_object addMagazine ["6Rnd_LG_scalpel", 3];
					_object addMagazine ["Laserdesignator_mounted", [-1]];
					_object addMagazineTurret ["60Rnd_CMFlare_Chaff_Magazine", [-1]];
				};

				case (_object isKindOf "O_UAV_02_F"):
				{
					_object setVehicleAmmoDef 0;
					_object addMagazine ["6Rnd_LG_scalpel", 3];
					_object addMagazine ["Laserdesignator_mounted", [-1]];
					_object addMagazineTurret ["60Rnd_CMFlare_Chaff_Magazine", [-1]];
				};

				case (_object isKindOf "I_UAV_02_F"):
				{
					_object setVehicleAmmoDef 0;
					_object addMagazine ["6Rnd_LG_scalpel", 3];
					_object addMagazine ["Laserdesignator_mounted", [-1]];
					_object addMagazineTurret ["60Rnd_CMFlare_Chaff_Magazine", [-1]];
				};

				case ({_object isKindOf _x} count ["B_Truck_01_Repair_F", "O_Truck_02_box_F", "O_Truck_03_repair_F", "I_Truck_02_box_F"] > 0):
				{
					_object setRepairCargo 25;
				};
			};*/

			if (_object isKindOf "O_Plane_CAS_02_F") then {
			  	_object addAction [ "Release Smoke Trails", { 
				  params [ 
				   "_target", 
				   "_caller", 
				   "_id" 
				  ]; 
				   
				  _smokeOn = _target getVariable [ "smokeTrailsOn", false ]; 
				   
				  switch ( _smokeOn ) do { 
				   case true : { 
				    _target setUserActionText [ _id, "Release Smoke Trails" ]; 
				    { 
				     deleteVehicle _x; 
				    }forEach ( _target getVariable [ "emitters", [] ] ); 
				   }; 
				   case false : { 
				    _target setUserActionText [ _id, "Stop Smoke Trails" ]; 
				    _emitters = []; 
				    { 
				     _x params[ "_color", "_pos" ]; 
				     _color params[ "_colorRed", "_colorGreen", "_colorBlue" ]; 
				      
				     _emitter = "#particlesource" createVehicle ( _target modelToWorld _pos ); 
				     _emitter attachTo [ _target, _pos ]; 
				      
				     _colorAlpha = 0.5; 
				     _timeout = 0; 
				     _particleLifeTime = 50; 
				     _particleDensity = 10; 
				     _particleSize = 1; 
				     _particleSpeed = 1; 
				     _particleLifting = 1; 
				     _windEffect = 1; 
				     _effectSize = 1; 
				     _expansion = 1; 
				      
				     _emitter setParticleParams [ 
				      ["\A3\data_f\ParticleEffects\Universal\Universal_02",8,0,40,1],"","billboard",1,_particleLifeTime,[0,0,0],[0,0,2*_particleSpeed],0,0.05,0.04*_particleLifting,0.05*_windEffect,[1 *_particleSize + 1,1.8 * _particleSize + 15], 
				     [[0.7*_colorRed,0.7*_colorGreen,0.7*_colorBlue,0.7*_colorAlpha],[0.7*_colorRed,0.7*_colorGreen,0.7*_colorBlue,0.6*_colorAlpha],[0.7*_colorRed,0.7*_colorGreen,0.7*_colorBlue,0.45*_colorAlpha], 
				     [0.84*_colorRed,0.84*_colorGreen,0.84*_colorBlue,0.28*_colorAlpha],[0.84*_colorRed,0.84*_colorGreen,0.84*_colorBlue,0.16*_colorAlpha],[0.84*_colorRed,0.84*_colorGreen,0.84*_colorBlue,0.09*_colorAlpha], 
				     [0.84*_colorRed,0.84*_colorGreen,0.84*_colorBlue,0.06*_colorAlpha],[1*_colorRed,1*_colorGreen,1*_colorBlue,0.02*_colorAlpha],[1*_colorRed,1*_colorGreen,1*_colorBlue,0*_colorAlpha]], 
				     [1,0.55,0.35], 0.1, 0.08*_expansion, "", "", ""]; 
				      
				     _emitter setParticleRandom [_particleLifeTime/2, [0.5*_effectSize,0.5*_effectSize,0.2*_effectSize], [0.3,0.3,0.5], 1, 0, [0,0,0,0.06], 0, 0]; 
				     _emitter setDropInterval (1/_particleDensity); 
				      
				     _nul = _emitters pushBack _emitter; 
				    }forEach [ 
				     [ [ 1, 0, 0 ], [-6, -3, -2] ], 
				     [ [ 1, 0, 0 ], [6, -3, -2] ], 
				     [ [ 1, 1, 0 ], [-6.5, -3, -2] ], 
				     [ [ 1, 1, 0 ], [6.5, -3, -2] ], 
				     [ [ 0, 0, 1 ], [-7, -3, -2] ], 
				     [ [ 0, 0, 1 ], [7, -3, -2] ]  
				    ]; 
				    _target setVariable [ "emitters", _emitters ]; 
				   }; 
				  }; 
				   
				  _target setVariable [ "smokeTrailsOn", !_smokeOn ]; 
				 }, 
				 [], 
				 1, 
				 false, 
				 true, 
				 "", 
				 "_this in crew _target" 
				];
			};

			if (_skipSave) then
			{
				_object setVariable ["A3W_skipAutoSave", true, true];
			}
			else
			{
				if (_object getVariable ["A3W_purchasedVehicle", false] && !isNil "fn_manualVehicleSave") then
				{
					_object call fn_manualVehicleSave;
				};
			};

			if (_object isKindOf "AllVehicles") then
			{
				if (isNull group _object) then
				{
					_object setOwner owner _player; // tentative workaround for exploding vehicles
				}
				else
				{
					(group _object) setGroupOwner owner _player;
				};
			};
		};
	};
};
