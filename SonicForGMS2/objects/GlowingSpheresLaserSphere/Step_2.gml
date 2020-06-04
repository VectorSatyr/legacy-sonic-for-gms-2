/// @description Animate
if (game_is_running())
{
	offset = (offset + x_speed) mod x_radius;
	var ox = (node * separation) + offset;
	var angle = angle_wrap(22.5 + (ox * 360 / x_radius));
	var oy = dsin(angle) * y_radius;
	y = owner.y + oy;
}