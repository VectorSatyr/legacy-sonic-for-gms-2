/// @description Initialize
event_inherited();
image_xscale = 0.5;
image_yscale = 0.5;
frame_alpha = 1;
radius = 35;
deadzone = 10;
snap_rate = 16;
touch_angle = 67.5;
touch_right = false;
touch_up = false;
touch_left = false;
touch_down = false;

stick = instance_create_layer(x, y, "touch", TouchUISign);
stick.sprite_index = TouchAnalogStickSprite;
stick.image_xscale = image_xscale;
stick.image_yscale = image_yscale;