function player_is_glide_sliding(argument0) {
	// player_is_glide_sliding(step)

	var phase = argument0;

	switch (phase) {
	case "start":
	    x_speed = (x_speed * dcos(direction)) - (y_speed * dsin(direction));

	    game_pc_animate(id, "glide_slide");
	    image_angle = gravity_direction;

	    game_pc_camera_direct(id, game_pc_camera_state_aerial);
	    break;

	case "finish":
	    break;

	case "step":
	    if (input_action_pressed and game_pc_upper_collision_solid(id, y_radius + 5) == noone) {
	        return game_pc_perform(id, player_is_glide_standing);
	    }

	    x_speed -= min(abs(x_speed), glide_slide_friction) * sign(x_speed);

	    game_pc_move_on_ground(id);
	    if (state_changed) {
	        return false;
	    }

	    if (not on_the_ground) {
	        return game_pc_perform(id, player_is_glide_falling);
	    }

		if (abs(x_speed) < slide_threshold and mask_direction != gravity_direction) {
	        if (local_direction >= 90 and local_direction <= 270) {
	            return game_pc_perform(id, player_is_glide_falling);
	        } else {
	            control_lock_time = default_slide_lock_time;
	            return game_pc_perform(id, player_is_running);
	        }
	    }

	    if (x_speed == 0) {
	        return game_pc_perform(id, player_is_glide_standing);
	    }

	    // brake dust
	    if (not underwater and game_clock_get_step() mod 4 == 0) {
	        var distance = y_radius - 6;
	        var x_offset = x_int + dsin(direction) * distance;
	        var y_offset = y_int + dcos(direction) * distance;
			game_particles_spawn("brake_dust", x_offset, y_offset);
	    }
	    break;
	}



}
