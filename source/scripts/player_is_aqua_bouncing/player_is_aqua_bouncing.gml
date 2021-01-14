function player_is_aqua_bouncing(argument0) {
	var phase = argument0;

	switch (phase) {
	case "start":
	    x_speed = 0;
	    y_speed = aqua_bound_force;

	    spinning = true;

	    game_pc_animate(id, "spin", true);
	    timeline_speed = 1 / max(5 - abs(x_speed), 1);
	    image_angle = gravity_direction;

	    instance_perform_user_event(shield, 0);
	    break;

	case "finish":
	    instance_perform_user_event(shield, 1);
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
	        game_pc_perform(id, player_is_jumping);
	        y_speed = -aqua_bounce_force;
	        game_pc_play_sound(id, AquaBounceSound);
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
