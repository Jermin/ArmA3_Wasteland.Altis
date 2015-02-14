// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: painter.sqf
//	@file Author: LouD
//	@file Created: 14-02-2015

_texDir = "client\images\vehicleTextures\";
_paint = _this select 0;

if (_paint == 1) exitWith {false};

_price = 500;
_playerMoney = player getVariable "cmoney";

if (_price > _playerMoney) exitWith
	{
		_text = format ["Not enough money! You need $%1 to paint your clothes.",_price];
		[_text, 10] call mf_notify_client;
		playSound "FD_CP_Not_Clear_F";
	};

if (_price < _playerMoney) then	
	{
		player setVariable["cmoney",(player getVariable "cmoney")-_price,true];
		_text = format ["You paid $%1 to paint your clothes.",_price];
		[_text, 10] call mf_notify_client;		
		player spawn fn_savePlayerData;
	};

if (_paint == 2) then {
player setObjectTextureGlobal  [0, _texDir+"kitty.jpg"]; backpackContainer player setObjectTextureGlobal  [0, _texDir+"kitty.jpg"];
};

if (_paint == 3) then {
player setObjectTextureGlobal  [0, _texDir+"skulls.jpg"]; backpackContainer player setObjectTextureGlobal  [0, _texDir+"skulls.jpg"];
};

if (_paint == 4) then {
player setObjectTextureGlobal  [0, _texDir+"camo_fuel.jpg"]; backpackContainer player setObjectTextureGlobal  [0, _texDir+"camo_fuel.jpg"];
};

if (_paint == 5) then {
player setObjectTextureGlobal  [0, _texDir+"camo_fack.jpg"]; backpackContainer player setObjectTextureGlobal  [0, _texDir+"camo_fack.jpg"];
};

if (_paint == 6) then {
player setObjectTextureGlobal  [0, _texDir+"redcamo.jpg"]; backpackContainer player setObjectTextureGlobal  [0, _texDir+"redcamo.jpg"];
};

if (_paint == 7) then {
player setObjectTextureGlobal  [0, _texDir+"camo_pank.jpg"]; backpackContainer player setObjectTextureGlobal  [0, _texDir+"camo_pank.jpg"];
};

if (_paint == 8) then {
player setObjectTextureGlobal  [0, _texDir+"dmr.jpg"]; backpackContainer player setObjectTextureGlobal  [0, _texDir+"dmr.jpg"];
};

if (_paint == 9) then {
player setObjectTextureGlobal  [0, _texDir+"icecamo.jpg"]; backpackContainer player setObjectTextureGlobal  [0, _texDir+"icecamo.jpg"];
};

if (_paint == 10) then {
player setObjectTextureGlobal  [0, _texDir+"digicam.jpg"]; backpackContainer player setObjectTextureGlobal  [0, _texDir+"digicam.jpg"];
};

if (_paint == 11) then {
player setObjectTextureGlobal  [0, _texDir+"snake.jpg"]; backpackContainer player setObjectTextureGlobal  [0, _texDir+"snake.jpg"];
};

if (_paint == 12) then {
player setObjectTextureGlobal  [0, _texDir+"clothcamo.jpg"]; backpackContainer player setObjectTextureGlobal  [0, _texDir+"clothcamo.jpg"];
};

