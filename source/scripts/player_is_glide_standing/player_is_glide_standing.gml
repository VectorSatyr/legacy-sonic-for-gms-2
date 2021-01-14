function player_is_glide_standing(argument0) {
	// player_is_glide_standing(step)

	var phase = argument0;

	switch (phase) {
	case "start":
	    x_speed = 0;

	    game_pc_animate(id, "glide_stand");
	    image_angle = gravity_direction;

	    game_pc_camera_direct(id, game_pc_camera_state_normal);
	    break;

	case "finish":
	    break;

	case "step":
	    if (input_down) {
	        if (abs(x_speed) >= roll_threshold or mask_direction != gravity_direction) {
	            game_pc_play_sound(id, SpinSound);
	            return game_pc_perform(id, player_is_rolling);
	        } else {
	            return game_pc_perform(id, player_is_crouching);
	        }
	    }

	    if (input_action_pressed and game_pc_upper_collision_solid(id, y_radius + 5) == noone) {
	        game_pc_play_sound(id, JumpSound);
	        return game_pc_perform(id, player_is_jumping);
	    }

	    game_pc_move_on_ground(id);
	    if (state_changed) {
	        return false;
	    }

	    if (not on_the_ground or (local_direction >= 90 and local_direction <= 270)) {
	        return game_pc_perform(id, player_is_glide_falling);
	    }

	    if (mask_direction != gravity_direction) {
	        control_lock_time = default_slide_lock_time;
	        return game_pc_perform(id, player_is_running);
	    }

	    if (x_speed != 0) {
	        return game_pc_perform(id, player_is_running);
	    }

	    if (timeline_expired(id)) {
	        return game_pc_perform(id, player_is_standing);
	    }
	    break;
	}



}
