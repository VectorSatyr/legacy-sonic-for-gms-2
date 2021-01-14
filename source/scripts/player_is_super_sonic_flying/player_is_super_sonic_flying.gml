function player_is_super_sonic_flying(argument0) {
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
	    game_pc_animate(id, "run");
	    game_pc_camera_direct(id, game_pc_camera_state_aerial);
	    break;

	case "finish":
	    break;

	case "step":
	    if (input_action_pressed) {
	        spinning = true;
	        game_pc_animate(id, "spin");
	        return game_pc_perform(id, player_is_falling);
	    }

	    if (horizontal_axis_value != 0) {
	        facing_sign = horizontal_axis_value;
	        if (abs(x_speed) < speed_cap or sign(x_speed) != horizontal_axis_value) {
	            x_speed += air_acceleration * horizontal_axis_value;
	            if (abs(x_speed) > speed_cap and sign(x_speed) == horizontal_axis_value) {
	                x_speed = speed_cap * horizontal_axis_value;
	            }
	        }
	    } else {
	        x_speed -= min(abs(x_speed), air_acceleration) * sign(x_speed);
	    }

	    var vertical_sign = 0;
	    if (input_up) {
	        vertical_sign = min(vertical_sign, -1);
	    } else if (input_down) {
	        vertical_sign = max(vertical_sign, 1);
	    }

	    if (vertical_sign != 0) {
	        if (abs(y_speed) < speed_cap or sign(y_speed) != vertical_sign) {
	            y_speed += gravity_speed * vertical_sign;
	            if (abs(y_speed) > speed_cap and sign(y_speed) == vertical_sign) {
	                y_speed = speed_cap * vertical_sign;
	            }
	        }
	    } else {
	        y_speed -= min(abs(y_speed), gravity_speed) * sign(y_speed);
	    }

	    game_pc_move_in_air(id);
	    if (state_changed) {
	        return false;
	    }

	    if (on_the_ground) {
	        if (x_speed != 0) {
	            return game_pc_perform(id, player_is_running);
	        } else {
	            return game_pc_perform(id, player_is_standing);
	        }
	    }
	    break;
	}



}
