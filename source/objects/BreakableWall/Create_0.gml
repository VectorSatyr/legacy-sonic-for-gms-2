/// @description Initialize
event_inherited();
reaction_test = function (character)
{
	with (character) {
		if (
			spinning and game_pc_in_shape(
				id, other.id, x_wall_radius, y_radius
			)
		) {
			game_pc_react_to(id, other.id);
		}
	}
};
reaction_on_enter = function (character)
{
	with (character) {
		if (
			not on_the_ground and y_speed >= 0 and 
			game_pc_lower_in_shape(id, other.id, y_radius)
		) {
			y_speed = -5;
			if (state == player_is_aqua_bouncing) {
				game_pc_perform(id, player_is_jumping);
				game_pc_play_sound(id, AquaBounceSound);
			}
		}
	}
	game_pc_play_sound(character, BreakSound);
	instance_destroy(id);
};