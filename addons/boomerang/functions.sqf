if (!isNil "boomerang_functions_defined") exitWith {};

#include "macro.h"



diag_log format["Loading boomerang functions ..."];

call compile preprocessFileLineNumbers "addons\parking\config.sqf";

boomerand_hud_scale = 1; //scale for how big to show the boomerang device

boomerang_hud_remove = {
  11 cuttext ["","plain"];
  boomerang_hud_active = nil;
};

boomerang_led_set_state = {
  ARGVX3(0,_index,0);
  ARGVX3(1,_state,false);

  if (_index < 1 || {_index > 12}) exitWith {};

  def(_display);
  def(_idc);
  def(_led);

  _display = uiNamespace getVariable "boomerang_hud";
  _idc = boomerang_hud_led_idc_base + _index;
  _led = _display displayCtrl _idc;
  _led ctrlShow _state;
};

boomerang_voice = "Male12";
boomerang_voice_tone = "Normal"; //Stealth, Normal, Combat
boomerang_sounds_path =  ("a3\dubbing_radio_f\data\" + boomerang_voice + "\RadioProtocolENG\" + boomerang_voice_tone);
boomerang_contact_sound = (boomerang_sounds_path + "\150_Reporting\EnemyDetected_2.ogg");

#define POS_ASL (if(surfaceIsWater (getPos player)) then {positionCameraToWorld [0,0,0]} else {ATLtoASL(positionCameraToWorld [0,0,0])})

boomerang_led_sound = { _this spawn {
  ARGVX3(0,_index,0);
  playSound "contact";
  uiSleep 1;
  playSound ("at_" + str(_index));
  uiSleep 1;
}};

boomerang_alert_at = {
  disableSerialization;
  ARGVX3(0,_direction,0);
  [_direction] call boomerang_led_sound;
  [_direction, true] call boomerang_led_set_state;
  uiSleep 2;
  [_direction, false] call boomerang_led_set_state;
};

//pre-computed set of relative coordinates
boomerang_led_coord_map = [
 [0.03,-0.07,0], //1 o'clock
 [0.0519615,-0.042,0], //2 o'clock
 [0.06,0,0], //3 o'oclock
 [0.0519615,0.042,0], //4 o'oclock
 [0.03,0.07,0], //5 o'oclock
 [0,0.083,0], //6 o'clock
 [-0.03,0.07,0], //7 o'clock
 [-0.0519615,0.042,0], //8 o'clock
 [-0.06,0,0], //9 o'clock
 [-0.0519615,-0.042,0], //10 o'clock
 [-0.03,-0.07,0], //11 o'clock
 [0,-0.083,0] //12 o'clock
];

boomerang_led_setup = {
  disableSerialization;
  ARGVX3(0,_index,0);
  if (_index < 1 || {_index > 12}) exitWith {};

  def(_display);
  def(_idc);
  def(_led);

  _display = uiNamespace getVariable "boomerang_hud";
  _idc = boomerang_hud_led_idc_base + _index;
  _led = _display displayCtrl _idc;

  private["_x","_y", "_w", "_h"];
  _w = 0.025 * boomerand_hud_scale;
  _h = 0.025 * boomerand_hud_scale;
  _x = safezoneX + _w * 8.6;
  _y = safezoneY + _h * 13.78;

  def(_vec);
  _vec = boomerang_led_coord_map select (_index -1);
  _vec = [(_vec select 0) *  boomerand_hud_scale, (_vec select 1) * boomerand_hud_scale, 0];

  _led ctrlSetPosition [(_x + (_vec select 0)),(_y + (_vec select 1)),_w,_h];
  _led ctrlSetText "addons\boomerang\images\boomerang_led.paa";
  _led ctrlShow false;
  _led ctrlCommit 0;
};

boomerand_test_leds = {
  disableSerialization;
  {
    for "_i" from 1 to 12 do {
      [_i, _x] call boomerang_led_set_state;
      uiSleep 0.01;
    };
  } forEach [false, true, false];
};

boomerang_hud_setup = {
  disableSerialization;
  11 cutRsc ["boomerang_hud","PLAIN",1e+011,false];

  def(_display);
  _display = uiNamespace getVariable "boomerang_hud";

  def(_boomerang_background);
  _boomerang_background = _display displayCtrl boomerang_hud_background_idc;


  private["_x","_y", "_w", "_h"];
  _w = 0.6 * boomerand_hud_scale;
  _h = 0.6 * boomerand_hud_scale;
  _x = safezoneX;
  _y = safezoneY;
  _boomerang_background ctrlSetPosition [_x,_y,_w,_h];
  _boomerang_background ctrlSetText "addons\boomerang\images\boomerang.paa";
  _boomerang_background ctrlCommit 0;

  for "_i" from 1 to 12 do {
    [_i] call boomerang_led_setup;
  };

  //for shits and giggles
  [] spawn boomerand_test_leds;

  boomerang_hud_active = true;

  [_boomerang_background] spawn {
    ARGVX2(0,_ctrl);
    waitUntil {sleep 1; (not (alive player) || { ctrlShown _ctrl})};
    [] call boomerang_hud_remove;
  };
};

vector_angle2 = {
  ARGVX3(0,_obj,objNull);
  ARGVX3(1,_v2,[]);
  def(_local);
  _local = _obj worldToModel _v2;
  (_local select 0) atan2 ( _local select 1);
};


boomerang_get_clock_pos = {
  ARGVX3(0,_unit,objNull);
  ARGVX3(1,_firer,objNull);

  def(_angle);
  _angle = [_unit, getPos _firer] call vector_angle2;
  _angle = ((_angle) + 360) % 360;

  def(_clock_pos);
  _clock_pos = round((_angle / 360) * 12);
  _clock_pos = if (_clock_pos == 0) then {12} else {_clock_pos};

  (_clock_pos)
};


boomerang_fired_near_handler = {
  if (isNil "boomerang_hud_active") exitWith {};
  ARGVX3(0,_unit,objNull);
  ARGVX3(1,_firer,objNull);
  ARGVX3(2,_distance,0);
  ARGVX3(3,_weapon,"");
  ARGVX3(4,_muzzle,"");
  ARGVX3(5,_mode,"");
  ARGVX3(6,_ammo,"");

  if (_unit == _firer) exitWith {};

  def(_clock_pos);
  _clock_pos = [_unit, _firer] call boomerang_get_clock_pos;


  init(_exit,false);
  if (!(isNil "boomerang_last_event_pos" || {isNil "boomerang_last_event_time"})) then {
    if (boomerang_last_event_pos == _clock_pos && (diag_tickTime - boomerang_last_event_time)  < 3) then {
      _exit = true;
    };
  };

  if (_exit) exitWith {};

  boomerang_last_event_pos = _clock_pos;
  boomerang_last_event_time = diag_tickTime;

 [_clock_pos] spawn boomerang_alert_at;
};

boomerang_add_events = {
  player addEventHandler ["FiredNear", {_this call boomerang_fired_near_handler}];
};



boomerang_load_hud = {
  []  call boomerang_hud_remove;
  [] call boomerang_hud_setup;
};


[] call boomerang_add_events;

boomerang_functions_defined = true;



diag_log format["Loading boomerang functions complete"];