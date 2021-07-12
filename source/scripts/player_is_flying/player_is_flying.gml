function player_is_flying(argument0) {
	var phase = argument0;

	switch (phase)
	{
	case "start":
		if (on_the_ground)
		{
			ground_id = noone;
			on_the_ground = false;
			game_pc_translate_speed(id, x_speed, local_direction);
			game_pc_redirect(id, gravity_direction);
			game_pc_align(id, gravity_direction);
		}
		spinning = false;
		flight_force = flight_base_force;
		game_pc_animate(id, "flight");
		game_pc_camera_direct(id, game_pc_camera_state_aerial);
		break;

	case "finish":
		if (audio_is_playing(flight_soundid))
		{
			audio_stop_sound(flight_soundid);
		}
		break;

	case "step":
		if (input_action_pressed and flight_time and y_speed >= flight_threshold)
		{
			flight_force = -flight_ascend_force;
		}

		if (horizontal_axis_value != 0)
		{
			facing_sign = horizontal_axis_value;
			if (abs(x_speed) < speed_cap or sign(x_speed) != horizontal_axis_value)
			{
				x_speed += air_acceleration * horizontal_axis_value;
				if (abs(x_speed) > speed_cap and 
					sign(x_speed) == horizontal_axis_value)
				{
					x_speed = speed_cap * horizontal_axis_value;
				}
			}
		}

		game_pc_move_in_air(id);
		if (state_changed) return false;

		if (on_the_ground)
		{
			return game_pc_perform(
				id, ((x_speed != 0) ? player_is_running : player_is_standing)
			);
		}

		if (underwater) return game_pc_perform(id, player_is_swimming);

		if (y_speed < 0 and y_speed > -jump_release_force) 
		{
			if (abs(x_speed) > air_friction_threshold) x_speed *= air_friction;
		}

		y_speed += flight_force;

		if (y_speed < flight_threshold or ceiling_id != noone)
		{
			flight_force = flight_base_force;
		}

		var mask = bound_mask & ~bound_ignore_mask;
		var mask_left = int64(1);
		var mask_top = int64(2);
		var mask_right = int64(4);
		var mask_bottom = int64(8);
		switch (gravity_direction)
		{
		case 0: if (mask & mask_top) flight_force = flight_base_force; break;
		case 90: if (mask & mask_left) flight_force = flight_base_force; break;
		case 180: if (mask & mask_bottom) flight_force = flight_base_force; break;
		case 270: if (mask & mask_right) flight_force = flight_base_force; break;
		}

		if (flight_time > 0) flight_time--;
		if (flight_time)
		{
			game_pc_animate(id, "flight");
			if (not audio_is_playing(FlightSound))
			{
				audio_stop_sound(flight_soundid);
				flight_soundid = game_pc_play_sound(id, FlightSound, true);
			}
		}
		else
		{
			game_pc_animate(id, "flight_fall");
			if (not audio_is_playing(FlightFallSound))
			{
				audio_stop_sound(flight_soundid);
				flight_soundid = game_pc_play_sound(id, FlightFallSound, 0);
			}
		}
		break;
	}


}
