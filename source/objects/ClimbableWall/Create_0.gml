/// @description Initialize
event_inherited();
reaction_test = function (character)
{
	if (bottom_solid) {
		with (character) {
			if (state == player_is_gliding) {
				var radius = x_wall_radius * glide_direction;
				if (game_pc_arm_in_shape(id, other.id, radius)) {
					game_pc_react_to(id, other.id);
				}
			}
		}
	}
};
reaction_on_enter = function (character)
{
	with (character) {
		game_pc_perform(id, player_is_climbing);
		game_pc_play_sound(id, ClaspingSound);
		climb_id = other.id;
	}
};