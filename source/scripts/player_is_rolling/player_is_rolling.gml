function player_is_rolling(argument0) {
	// player_is_rolling(step)

	var phase = argument0;

	switch (phase) {
	case "start":
	    spinning = true;

	    game_pc_animate(id, "spin");
	    image_angle = gravity_direction;
	    timeline_speed = 1 / max(5 - floor(abs(x_speed)), 1);

	    game_pc_camera_direct(id, game_pc_camera_state_normal);
	    break;

	case "finish":
	    break;

	case "step":
	    if (input_action_pressed and game_pc_upper_collision_solid(id, y_radius + 5) == noone) {
	        //rolling_jump = true;
	        game_pc_play_sound(id, JumpSound);
	        return game_pc_perform(id, player_is_jumping);
	    }

	    if (horizontal_axis_value != 0) {
	        if (control_lock_time <= 0) {
	            if ((x_speed != 0) and (sign(x_speed) != horizontal_axis_value)) {
	                x_speed += roll_deceleration * horizontal_axis_value;
	                if (sign(x_speed) == horizontal_axis_value) {
	                    x_speed = roll_deceleration * horizontal_axis_value;
	                }
	            }
	        }
	    }

	    x_speed -= min(abs(x_speed), roll_friction) * sign(x_speed);

	    game_pc_move_on_ground(id);
		if (state_changed) {
	        return false;
	    }

	    if (not on_the_ground) {
	        return game_pc_perform(id, player_is_falling);
	    }

	    var roll_slope_friction;
	    if (sign(x_speed) == sign(dsin(local_direction))) {
	        roll_slope_friction = roll_slope_friction_up;
	    } else {
	        roll_slope_friction = roll_slope_friction_down;
	    }
	    x_speed -= game_pc_calc_slope_friction(id, roll_slope_friction, roll_friction);

	    if (abs(x_speed) < slide_threshold) {
	        if ((local_direction >= 90 and local_direction <= 270)) {
	            return game_pc_perform(id, player_is_falling);
	        }
	    }

	    if (abs(x_speed) < unroll_threshold and mask_direction == gravity_direction) {
	        return game_pc_perform(id, player_is_running);
	    }

	    // animate
	    timeline_speed = 1 / max(5 - floor(abs(x_speed)), 1);
	    break;
	}



}
