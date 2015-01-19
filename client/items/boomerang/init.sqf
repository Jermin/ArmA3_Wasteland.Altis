// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//@file Version: 1.0
//@file Name: init.sqf
//@file Author: micovery
//@file Argument: the path to the directory holding this file.

private ["_path"];
_path = _this;

private["_h"];
_h = [] execVM "addons\boomerang\config.sqf";
waitUntil {scriptDone _h;};

MF_ITEMS_BOOMERANG_TERMINAL = "boomerang_terminal";
MF_ITEMS_BOOMERANG_TERMINAL_TYPE = "Land_FMradio_F";
MF_ITEMS_BOOMERANG_TERMINAL_ICON = "addons\cctv\icons\laptop.paa";
[MF_ITEMS_BOOMERANG_TERMINAL, "Boomerang Terminal", {_this call boomerang_toggle_hud}, MF_ITEMS_BOOMERANG_TERMINAL_TYPE, MF_ITEMS_BOOMERANG_TERMINAL_ICON, cctv_max_inventory_base_stations] call mf_inventory_create;