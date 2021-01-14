function player_is_crouching(argument0) {
	// player_is_crouching(step)

	var phase = argument0;

	switch (phase) {
	case "start":
	    game_pc_animate(id, "crouch");
	    image_angle = gravity_direction;

	    game_pc_camera_direct(id, game_pc_camera_state_crouching);

	    with (camera) {
	        look_time = default_look_time;
	    }
	    break;

	case "finish":
	    break;

	case "step":
	    if (input_action_pressed) {
	        x_speed = 0;
	        return game_pc_perform(id, player_is_spindashing);
	    }

	    x_speed -= min(abs(x_speed), land_friction) * sign(x_speed);

	    game_pc_move_on_ground(id);
	    if (state_changed) {
	        return false;
	    }

	    if (not on_the_ground or (local_direction >= 90 and local_direction <= 270)) {
	        return game_pc_perform(id, player_is_falling);
	    }

	    if (mask_direction != gravity_direction) {
	        control_lock_time = default_slide_lock_time;
	        return game_pc_perform(id, player_is_running);
	    }

	    x_speed -= game_pc_calc_slope_friction(id, slope_friction, land_friction);

	    if (horizontal_axis_value != 0) {
	        return game_pc_perform(id, player_is_running);
	    }
	    if (not input_down) {
	        return game_pc_perform(id, player_is_standing);
	    }
	    break;
	}



}
