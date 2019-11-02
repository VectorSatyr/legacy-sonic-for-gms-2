/// @description  Initialize
image_speed = 0;

timeline_index = SonicTheHedgehogTitleAnim;
timeline_running = true;
timeline_loop = false;

phase = 0;
display_time = 90;

logo_ox = CAMERA_WIDTH * 0.5;
logo_oy = CAMERA_HEIGHT * 0.5;

font = global.CrackersFont;
font_color = c_white;

press_start_back = SonicTitlePressStartBack;
var w = background_get_width(press_start_back);
var h = background_get_height(press_start_back);
press_start_ox = (CAMERA_WIDTH * 0.5) - (w * 0.5);
press_start_oy = (CAMERA_HEIGHT * 0.875) - (h * 0.5);
press_start_alpha = 0;
press_start_sin = 0;
press_start_blink_speed = 2;

build_version_text = "v" + string(GM_version);
build_version_ox = CAMERA_WIDTH - 4;
build_version_oy = CAMERA_HEIGHT - 4;

disclaimer_ox = 4;
disclaimer_oy = CAMERA_HEIGHT - background_get_height(LegalDisclaimerInputBack) - 4;

