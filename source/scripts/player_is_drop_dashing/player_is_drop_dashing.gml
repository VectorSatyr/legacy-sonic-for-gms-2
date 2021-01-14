function player_is_drop_dashing(argument0) {
	var phase = argument0;

	switch (phase) {
	case "start":
	    drop_dash_time = 20;
	    break;

	case "finish":
	    jump_action_available = true;
	    break;

	case "step":
	    if (horizontal_axis_value != 0) {
	        if (abs(x_speed) < speed_cap) {
	            x_speed += air_acceleration * horizontal_axis_value;
	            if (abs(x_speed) > speed_cap) {
	                x_speed = speed_cap * horizontal_axis_value;
	            }
	        }
	    }

	    game_pc_move_in_air(id);
	    if (state_changed) {
	        return false;
	    }

	    if (on_the_ground) {
	        if (drop_dash_time <= 0) {
	            if (horizontal_axis_value != 0 and facing_sign != horizontal_axis_value) {
	                facing_sign = horizontal_axis_value;
	            }

	            var drop_dash_speed = 8;
	            var drop_dash_max_speed = 12;

	            if (x_speed == 0 or sign(x_speed) == facing_sign) {
	                drop_dash_speed = min(drop_dash_speed + abs(x_speed * 0.25), drop_dash_max_speed);
	            } else if (direction != gravity_direction) {
	                drop_dash_speed -= abs(x_speed * 0.5);
	            }

	            x_speed = drop_dash_speed * facing_sign;

		        with (camera)
				{
		            freeze_time = floor(24 - abs(other.x_speed));
		        }

	            audio_stop_sound(rev_soundid);        
	            game_pc_play_sound(id, SpinDashSound);
				game_particles_spawn("drop_dash_dust", x_int, y_int);

	            return game_pc_perform(id, player_is_rolling);

	        } else if (x_speed != 0) {
	            return game_pc_perform(id, player_is_running);
	        } else {
	            return game_pc_perform(id, player_is_standing);
	        }
	    }

	    if (input_action) {
	        if (drop_dash_time > 0) {
	            --drop_dash_time;
	            if (drop_dash_time <= 0) {
	                rev_soundid = game_pc_play_sound(id, DropDashSound);
	                game_pc_animate(id, "spindash");
	                image_angle = gravity_direction;
	            }
	        }
	    } else if (drop_dash_time < 20) {
	        drop_dash_time = 20;
	        game_pc_animate(id, "spin");
	        image_angle = gravity_direction;
	    }

	    if (y_speed < 0 and y_speed > -jump_release_force) {
	        if (abs(x_speed) > air_friction_threshold) {
	            x_speed *= air_friction;
	        }
	    }

	    y_speed += gravity_speed;

	    if (horizontal_axis_value != 0 and facing_sign != horizontal_axis_value) {
	        facing_sign = horizontal_axis_value;
	    }
	    break;
	}



}
