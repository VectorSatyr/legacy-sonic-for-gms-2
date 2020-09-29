/// @description  Initialize
image_speed = 0;

state = "appearing";
delay = 90;

switch (os_type)
{
case os_android:
case os_ios:
	disclaimer_sprite = LegalDisclaimerTouchSprite;
	start_sprite = SonicTitleTouchStartSprite;
	break;
default:
	disclaimer_sprite = LegalDisclaimerInputSprite;
	start_sprite = SonicTitlePressStartSprite;
}

splash_x = CAMERA_WIDTH * 0.5;
splash_y = CAMERA_HEIGHT * 0.5;
build_version_text = "v" + string(GM_version);
build_version_x = CAMERA_WIDTH - 4;
build_version_y = CAMERA_HEIGHT - 4;
disclaimer_x = 4;
disclaimer_y = CAMERA_HEIGHT - sprite_get_height(disclaimer_sprite) - 4;
start_x = CAMERA_WIDTH * 0.5;
start_y = CAMERA_HEIGHT * 0.875;
start_sin = 0;
start_blink_speed = 2;