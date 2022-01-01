/// @description Initialize
event_inherited();
force = 7;
reaction_on_enter = function (character)
{
	with (character) {
		if (state != player_is_linked) {
			var bounce_dir = angle_wrap(
				round(
					point_direction(other.x, other.y, x_int, y_int)
				) - mask_direction
			);
			x_speed = dcos(bounce_dir) * other.force;
			y_speed = -dsin(bounce_dir) * other.force;
		}
		switch (state) {
		case player_is_hurt:
			game_pc_perform(id, player_is_falling);
			break;
		case player_is_aqua_bouncing:
			game_pc_perform(id, player_is_jumping);
			game_pc_play_sound(id, AquaBounceSound);
			break;
		case player_is_running:
			control_lock_time = default_spring_lock_time;
			break;
		case player_is_jumping:
			rolling_jump = false;
			break;
		}
		game_pc_play_sound(id, BumperSound2);
	}
	instance_destroy();
}