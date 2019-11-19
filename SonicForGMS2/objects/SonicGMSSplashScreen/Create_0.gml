/// @description  Initialize
image_speed = 0;

back = SonicGMSLogoBack;

var width = sprite_get_width(back);
var height = sprite_get_height(back);

x = (CAMERA_WIDTH * 0.5) - (width * 0.5);
y = (CAMERA_HEIGHT * 0.5) - (height * 0.5);

phase = 0;
display_time = 120;

