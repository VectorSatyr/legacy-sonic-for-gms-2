/// @description  Bounce
with (player) {
    if (state == player_is_hurt) {
        game_pc_perform(self, player_is_falling);
    }

    if (state == player_is_aqua_bouncing) {
        game_pc_perform(self, player_is_jumping);
        game_pc_play_sound(self, AquaBounceSound);
    }

	if (state != player_is_linked) {
	    var bounce_direction = angle_wrap(round(point_direction(other.x, other.y, x_int, y_int)) - mask_direction);

	    x_speed = dcos(bounce_direction) * other.force;
	    y_speed = -dsin(bounce_direction) * other.force;
	}

    if (state == player_is_running) {
        control_lock_time = default_spring_lock_time;
    }

    if (state == player_is_jumping) {
        rolling_jump = false;
    }

    game_pc_play_sound(self, BumperSound2);
}