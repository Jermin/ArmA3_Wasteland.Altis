#inclide "hud_constants.h"

#define led(index) \
  class boomerang_hud_led ## index: gui_RscPictureKeepAspect { \
    idc = boomerang_hud_led ## index ## _idc; \
    x = -10; y = -10; \
    w = 0.1; h = 0.1; \
  }

 class boomerang_hud {
  idd = boomerang_hud_idd;
  movingEnable = 1;
  enableSimulation = 0;
  enableDisplay = 0;
  fadein = 0;
  duration = 1e+011;
  fadeout = 0;
  name = "boomerang_hud";
  onLoad = "uiNamespace setVariable ['boomerang_hud',_this select 0]";
  objects[]    = {};
  controls[]   = {
    boomerang_hud_background,
    boomerang_hud_led1,
    boomerang_hud_led2,
    boomerang_hud_led3,
    boomerang_hud_led4,
    boomerang_hud_led5,
    boomerang_hud_led6,
    boomerang_hud_led7,
    boomerang_hud_led8,
    boomerang_hud_led9,
    boomerang_hud_led10,
    boomerang_hud_led11,
    boomerang_hud_led12
  };

  led(1);
  led(2);
  led(3);
  led(4);
  led(5);
  led(6);
  led(7);
  led(8);
  led(9);
  led(10);
  led(11);
  led(12);

  class boomerang_hud_background: gui_RscPictureKeepAspect {
    idc = boomerang_hud_background_idc;
    x = -10; y = -10;
    w = 0.1; h = 0.1;
  };
};