/// @description Initialize
image_speed = 0;
state = "entering";
next_room = GlowingSpheresRoom;
timer = 0;
active_time = 256;
x_radius = 0;
y_radius = 0;
max_x_radius = 32;
max_y_radius = 8;
rotation_speed = 16;
tilt = 0;
tilt_speed = 2;
total_stars = 4;
for (var n = 0; n < total_stars; ++n) {
	stars[n] = instance_create_layer(xstart, ystart, "objects", BonusStar);
	stars[n].x_dir = 360 * (n / total_stars);
	stars[n].y_dir = 360 * (n / total_stars);
}