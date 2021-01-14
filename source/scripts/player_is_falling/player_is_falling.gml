function player_is_falling(argument0) {
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

	    switch (current_animation) {
	    case "push":
	        game_pc_animate(id, "walk");
	        timeline_speed = 0.125;
	        break;
	    }

	    game_pc_camera_direct(id, game_pc_camera_state_aerial);
	    break;

	case "finish":
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
	        if (x_speed != 0) {
	            return game_pc_perform(id, player_is_running);
	        } else {
	            return game_pc_perform(id, player_is_standing);
	        }
	    }

	    if (y_speed < 0 and y_speed > -jump_release_force) {
	        if (abs(x_speed) > air_friction_threshold) {
	            x_speed *= air_friction;
	        }
	    }

	    y_speed += gravity_speed;

	    if (image_angle != direction) {
	        var diff = angle_difference(direction, image_angle);
	        image_angle += min(2.8125, abs(diff)) * sign(diff);
	    }
	    break;
	}



}
