function player_is_spindashing(argument0) {
	// player_is_spindashing(step)

	var phase = argument0;

	switch (phase) {
	case "start":
	    spinning = true;

	    game_pc_animate(id, "spindash");
	    image_angle = gravity_direction;

	    rev_soundid = game_pc_play_sound(id, SpinRevSound);

	    with (instance_create_depth(x, y, depth - 1, PlayerDashSmoke)) {
	        image_xscale = other.facing_sign;
	        source = other.id;
	    }

	    game_pc_camera_direct(id, game_pc_camera_state_normal);
	    break;

	case "finish":
	    spinning = false;
	    break;

	case "step":
	    game_pc_move_on_ground(id);
	    if (state_changed) {
	        return false;
	    }

	    if (not on_the_ground or (local_direction >= 90 and local_direction <= 270)) {
	        return game_pc_perform(id, player_is_falling);
	    }

	    if (mask_direction != gravity_direction) {
	        control_lock_time = default_slide_lock_time;
	        game_pc_play_sound(id, SpinSound);
	        return game_pc_perform(id, player_is_rolling);
	    }

	    if (not input_down) {
	        x_speed = facing_sign * (8 + (spindash_charge div 2));
        
	        spindash_charge = 0;

	        with (camera) {
	            freeze_time = floor(24 - abs(other.x_speed));
	        }

	        audio_stop_sound(rev_soundid);        
	        game_pc_play_sound(id, SpinDashSound);

	        return game_pc_perform(id, player_is_rolling);
	    }

	    if (input_action_pressed and spindash_charge < spindash_max_charge) {
	        spindash_charge = min(spindash_charge + 2, spindash_max_charge);
	        var h = rev_audio_pitch + (rev_audio_pitch / 2) * (spindash_charge / 8);
	        rev_soundid = game_pc_play_sound(id, SpinRevSound, false);
	        audio_sound_pitch(rev_soundid, h);
	    }

	    if (spindash_charge > 0) {
	        spindash_charge *= spindash_atrophy;
	    }
	    break;
	}



}
