/// @description Initialize
event_inherited();
image_xscale = 0.43;
image_yscale = 0.43;

button_scale = 0.5;
button_touched_scale = 0.45;

button = instance_create_layer(x, y, "touch", TouchUISign);
button.sprite_index = TouchAnalogStickSprite;
button.image_xscale = button_scale;
button.image_yscale = button_scale;
button.event = "a";