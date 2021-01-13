/// @description  Move
if (game_is_running()) {
	y += y_speed;
	y_speed = clamp(y_speed + gravity_force, -y_max_speed, y_max_speed);
	if (round(y) != ystart and reaction_script < 0) {
		reaction_script = player_react_to_glowing_spheres_gumball;
	}
}