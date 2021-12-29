function player_is_climbing(phase)
{
	switch (phase) {
	case "start":
		x_speed = 0;
		y_speed = 0;
		game_pc_redirect(id, gravity_direction);
		game_pc_align(id, gravity_direction);
		game_pc_animate(id, "climb");
		image_angle = gravity_direction;
		game_pc_camera_direct(id, game_pc_camera_state_aerial);
		break;

	case "finish":
		climb_id = noone;
		break;

	case "step":
		if (
			input_action_pressed and 
			game_pc_upper_collision_solid(id, y_radius + 5) == noone
		) {
			game_pc_perform(id, player_is_jumping);
			facing_sign = -facing_sign;
			x_speed = 4 * facing_sign;
			y_speed = -4;
			game_pc_play_sound(id, JumpSound);
			return false;
		}
		if (input_up) {
			y_speed = -climb_speed;
		} else if (input_down) {
			y_speed = climb_speed;
		} else {
			y_speed = 0;
		}
		if (instance_exists(climb_id)) {
			game_pc_ride(id, climb_id);
		} else {
			game_pc_perform(id, player_is_glide_falling);
			return false;
		}
		game_pc_memorize_reactions(id);
		game_pc_step_in_air_vertical(id, y_speed);
		if (on_the_ground) {
			game_pc_perform(id, player_is_standing);
			return false;
		}
		var wall = game_pc_arms_collision_solid(id, x_wall_radius * 2);
	    if (wall != noone) {
	        if (wall != climb_id) {
	            game_pc_position(id, x - (dsin(direction) * y_speed), y - (dcos(direction) * y_speed));
	            y_speed = 0;
	        }
	    } else {
			game_pc_perform(
				id, (y_speed < 0) ? player_is_lifting : 
					player_is_glide_falling
			);
			return false;
	    }
		image_index -= (sign(y_speed) * 0.25);
		break;
	}
}