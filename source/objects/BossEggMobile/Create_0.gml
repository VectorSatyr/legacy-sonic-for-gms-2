/// @description  Initialize
event_inherited();

eggman = instance_create_layer(x, y, "objects", BossEggMobileEggman);
eggman.owner = id;
flame = instance_create_layer(x, y, "objects", BossEggMobileFlame);
flame.owner = id;

base_y = ystart;

x_speed = 0;
y_speed = 0;

hover_angle = 0;
hover_step = 4;
hover_height = 3;

facing_sign = -1;