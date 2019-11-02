action_inherited();
/// Initialize
image_speed = 0;

eggman = instance_create(x, y, BossEggMobileEggman);
eggman.constant = true;

base_y = ystart;

x_speed = 0;
y_speed = 0;

hover_angle = 0;
hover_step = 4;
hover_height = 3;

facing_sign = -1;

