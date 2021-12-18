/// @description Initialize
event_inherited();
timer = 0;
reaction_test = function (character)
{
	with (character) {
		if (
			game_pc_upper_in_shape(id, other.id, y_radius) or 
			game_pc_lower_in_shape(id, other.id, y_radius)
		) {
			game_pc_react_to(id, other.id);
		}
	}
};
reaction_on_enter = function (character)
{
	with (character) {
		other.timer = 16;
		if (state == player_is_hurt) {
			game_pc_perform(id, player_is_falling);
		}
		if (state == player_is_aqua_bouncing) {
			game_pc_perform(id, player_is_jumping);
			game_pc_play_sound(id, AquaBounceSound);
		}
		var bounce_dir = angle_wrap(round(
			point_direction(other.x, other.y, x_int, y_int)) - mask_direction
		);
		x_speed = dcos(bounce_dir) * other.force;
		y_speed = -dsin(bounce_dir) * other.force;
		if (state == player_is_running) {
			control_lock_time = default_spring_lock_time;
		}
		if (state == player_is_jumping) {
			rolling_jump = false;
		}
		game_pc_play_sound(id, BumperSound);
	}
};