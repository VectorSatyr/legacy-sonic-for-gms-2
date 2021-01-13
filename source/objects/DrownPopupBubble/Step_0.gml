/// @description Rise
if (game_is_running())
{
	angle = (angle + angle_speed) mod 360;
	x = xstart + dsin(angle) * x_speed;
	y += y_speed;
}