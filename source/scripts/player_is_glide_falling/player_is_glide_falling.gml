function player_is_glide_falling(argument0) {
	var phase = argument0;

	switch (phase) {
	case "start":
	    if (on_the_ground) {
	        ground_id = noone;
	        on_the_ground = false;
	    }

	    game_pc_translate_speed(id, x_speed, local_direction);
	    game_pc_redirect(id, gravity_direction);
	    game_pc_align(id, gravity_direction);

	    x_speed *= 0.25;

	    game_pc_animate(id, "glide_fall");
	    image_angle = gravity_direction;

	    game_pc_camera_direct(id, game_pc_camera_state_aerial);
	    break;

	case "step":
	    if (horizontal_axis_value != 0) {
	        facing_sign = horizontal_axis_value;
	        if (abs(x_speed) < speed_cap or sign(x_speed) != horizontal_axis_value) {
	            x_speed += air_acceleration * horizontal_axis_value;
	            if (abs(x_speed) > speed_cap and sign(x_speed) == horizontal_axis_value) {
	                x_speed = speed_cap * horizontal_axis_value;
	            }
	        }
	    }

	    game_pc_move_in_air(id);
	    if (state_changed) {
	        return false;
	    }

		if (on_the_ground) {
	        if (mask_direction != gravity_direction) {
				control_lock_time = default_slide_lock_time;
				return game_pc_perform(id, player_is_running);
	        } else {
	            game_pc_play_sound(id, LandingSound);
	            return game_pc_perform(id, player_is_glide_landing);
	        }
	    }

	    if (y_speed < 0 and y_speed > -jump_release_force) {
	        if (abs(x_speed) > air_friction_threshold) {
	            x_speed *= air_friction;
	        }
	    }

	    y_speed += gravity_speed;
	    break;
	}



}
