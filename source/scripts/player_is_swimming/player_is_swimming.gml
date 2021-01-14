function player_is_swimming(argument0) {
	var phase = argument0;

	switch (phase) {
	case "start":
	    if (on_the_ground) {
	        ground_id = noone;
	        on_the_ground = false;

	        game_pc_translate_speed(id, x_speed, local_direction);
	        game_pc_redirect(id, gravity_direction);
	        game_pc_align(id, gravity_direction);
	    }

	    spinning = false;

	    flight_force = flight_base_force;

	    game_pc_animate(id, "swim");
	    game_pc_camera_direct(id, game_pc_camera_state_aerial);
	    break;

	case "finish":
	    if (audio_is_playing(flight_soundid)) {
	        audio_stop_sound(flight_soundid);
	    }
	    break;

	case "step":
	    if (input_action_pressed and flight_time and 
	        y_speed >= flight_threshold) {
	        flight_force = -flight_ascend_force;
	    }

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
	        if (x_speed != 0) {
	            return game_pc_perform(id, player_is_running);
	        } else {
	            return game_pc_perform(id, player_is_standing);
	        }
	    }

	    if (not underwater) {
	        return game_pc_perform(id, player_is_flying);
	    }

	    if (y_speed < 0 and y_speed > -jump_release_force) {
	        if (abs(x_speed) > air_friction_threshold) {
	            x_speed *= air_friction;
	        }
	    }

	    y_speed += flight_force;

	    if (y_speed < flight_threshold or ceiling_id != noone) {
	        flight_force = flight_base_force;
	    }

	    if (flight_time > 0) {
	        flight_time--;
	    }

	    if (flight_time) {
	        game_pc_animate(id, "swim");
	        timeline_speed = 0.75 - (0.25 * sign(y_speed));
	    } else {
	        game_pc_animate(id, "swim_fall");
	    }
	    break;
	}



}
