function player_perform_flame_dash() {
	jump_action_available = false;

	x_speed = facing_sign * flame_dash_speed;
	y_speed = 0;

	game_pc_animate(id, "spin", true);
	timeline_speed = 1;
	image_angle = gravity_direction;

	instance_perform_user_event(shield, 0);

	with (camera) {
	    freeze_time = 12;
	}

	game_pc_play_sound(id, FlameDashSound);



}
