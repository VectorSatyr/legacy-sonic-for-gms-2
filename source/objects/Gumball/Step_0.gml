/// @description Move
if (game_is_running()) {
	y += y_speed;
	y_speed = clamp(y_speed + gravity_force, -y_max_speed, y_max_speed);
	if (not collectable and round(y) != ystart) {
		collectable = true;
	}
}