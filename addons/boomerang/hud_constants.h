#define boomerang_hud_idd 3000
#define boomerang_hud_led_idc_base 3000
//3001 - 3012 are for LEDs
#define boomerang_hud_background_idc 3013

#define LED_IDC(x) (boomerang_hud_led_idc_base + x)

#define LED(index) \
  class boomerang_hud_##index##_led: gui_RscPictureKeepAspect { \
    idc = LED_IDC(index); \
    x = -10; y = -10; \
    w = 0.1; h = 0.1; \
  }