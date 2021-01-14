 /// @description  Control
if (game_is_running()) {
	with (PlayableCharacter) {
		if (linked_object_id == other.id) {
			if (input_action_pressed) {
				game_pc_perform(id, player_is_falling, true);
				game_pc_lift(id, other.force, -(x_int - other.x) * other.x_friction);
				game_pc_play_sound(id, FlipperSound);
				timeline_set(other.id, GSFlipperAnim, 2, false, true);
		        continue;
		    }

		    game_pc_move_on_ground(id);
			if (state_changed) {
		        continue;
		    }

		    if (not on_the_ground) {
		        game_pc_perform(id, player_is_falling);
				continue;
		    }

			if (ground_id != other.id) {
				game_pc_perform(id, player_is_rolling);
				continue;
			}

		    x_speed -= game_pc_calc_slope_friction(id, roll_slope_friction_down, roll_friction);

		    // animate
		    timeline_speed = 1 / max(5 - floor(abs(x_speed)), 1);
		}
	}
}