function player_is_hurt(argument0) {
	var phase = argument0;

	switch (phase) {
	case "start":
	    spinning = false;

	    ground_id = noone;

	    on_the_ground = false;

	    game_pc_translate_speed(id, x_speed, local_direction);
	    game_pc_redirect(id, gravity_direction);
	    game_pc_align(id, gravity_direction);

	    game_pc_animate(id, "hurt");
	    image_angle = gravity_direction;

	    game_pc_camera_direct(id, game_pc_camera_state_aerial);
	    break;

	case "finish":
	    recovery_time = default_recovery_time;
	    break;

	case "step":
	    game_pc_move_in_air(id);
	    if (state_changed) {
	        return false;
	    }

	    if (on_the_ground) {
	        game_pc_perform(id, player_is_standing);
	        x_speed = 0;
	        y_speed = 0;
	    }

	    y_speed += gravity_recoil_speed;
	    break;
	}



}
