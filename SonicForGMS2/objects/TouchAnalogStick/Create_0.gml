/// @description Initialize
event_inherited();
image_xscale = 0.5;
image_yscale = 0.5;
radius = 20;
snap_rate = 4;

stick = instance_create_layer(x, y, "touch", TouchUISign);
stick.sprite_index = TouchAnalogStickSprite;
stick.image_xscale = image_xscale;
stick.image_yscale = image_yscale;

frame_right = instance_create_layer(x, y, "touch", TouchUISign);
frame_right.sprite_index = TouchStickFrameRightSprite;
frame_right.mask_index = TouchStickFrameRightMaskSprite;
frame_right.image_xscale = image_xscale;
frame_right.image_yscale = image_yscale;
frame_right.event = "right";
frame_right.min_alpha = 0;
frame_right.max_alpha = 0.65;
frame_right.fade_rate = 1;
frame_right.wait_to_fade = 1;

frame_left = instance_create_layer(x, y, "touch", TouchUISign);
frame_left.sprite_index = TouchStickFrameLeftSprite;
frame_left.mask_index = TouchStickFrameLeftMaskSprite;
frame_left.image_xscale = image_xscale;
frame_left.image_yscale = image_yscale;
frame_left.event = "left";
frame_left.max_alpha = 0.65;
frame_left.min_alpha = 0;
frame_left.max_alpha = 0.65;
frame_left.fade_rate = 1;
frame_left.wait_to_fade = 1;

frame_down = instance_create_layer(x, y, "touch", TouchUISign);
frame_down.sprite_index = TouchStickFrameDownSprite;
frame_down.mask_index = TouchStickFrameDownMaskSprite;
frame_down.image_xscale = image_xscale;
frame_down.image_yscale = image_yscale;
frame_down.event = "down";
frame_down.max_alpha = 0.65;
frame_down.min_alpha = 0;
frame_down.max_alpha = 0.65;
frame_down.fade_rate = 1;
frame_down.wait_to_fade = 1;

frame_up = instance_create_layer(x, y, "touch", TouchUISign);
frame_up.sprite_index = TouchStickFrameUpSprite;
frame_up.mask_index = TouchStickFrameUpMaskSprite;
frame_up.image_xscale = image_xscale;
frame_up.image_yscale = image_yscale;
frame_up.event = "up";
frame_up.max_alpha = 0.65;
frame_up.min_alpha = 0;
frame_up.max_alpha = 0.65;
frame_up.fade_rate = 1;
frame_up.wait_to_fade = 1;