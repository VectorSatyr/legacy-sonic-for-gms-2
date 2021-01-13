 /// @description  Control
if (game_is_running()) {
	with (PlayableCharacter) {
		if (linked_object_id == other) {
			if (input_action_pressed) {
				game_pc_perform(self, player_is_falling, true);
				game_pc_lift(self, other.force, -(x_int - other.x) * other.x_friction);
				game_pc_play_sound(self, FlipperSound);
				timeline_set(other, GSFlipperAnim, 2, false, true);
		        continue;
		    }

		    game_pc_move_on_ground(self);
			if (state_changed) {
		        continue;
		    }

		    if (not on_the_ground) {
		        game_pc_perform(self, player_is_falling);
				continue;
		    }

			if (ground_id != other) {
				game_pc_perform(self, player_is_rolling);
				continue;
			}

		    x_speed -= game_pc_calc_slope_friction(self, roll_slope_friction_down, roll_friction);

		    // animate
		    timeline_speed = 1 / max(5 - floor(abs(x_speed)), 1);
		}
	}
}