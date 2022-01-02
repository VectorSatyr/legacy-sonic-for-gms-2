/// @description Initialize
event_inherited();
reaction_test = function (character)
{
	with (character) {
		if (game_pc_arms_in_shape(id, other.id, x_wall_radius + 2)) {
			game_pc_react_to(id, other.id);
		}
	}
};
reaction_on_enter = function (character)
{
	with (character) {
		x_speed = other.force * sign(x_int - other.x);
		switch (state) {
		case player_is_hurt:
			game_pc_perform(id, player_is_falling);
			break;
		case player_is_running:
			control_lock_time = default_spring_lock_time;
			break;
		case player_is_jumping:
			rolling_jump = false;
			break;
		}
		game_pc_animate(id, "flip", true);
		game_pc_play_sound(id, BumperSound);
	}
	timer = 12;
};