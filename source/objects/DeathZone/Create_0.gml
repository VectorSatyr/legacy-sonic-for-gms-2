/// @description Initialize
event_inherited();
reaction_test = function (character)
{
	with (character) {
		if (
			point_in_rectangle(
				x_int, y_int, other.bbox_left, other.bbox_top, 
				other.bbox_right, other.bbox_bottom
			)
		) {
			game_pc_react_to(id, other.id);
		}
	}
};
reaction_on_enter = function (character)
{
	game_pc_perform(character, player_is_defeated);
	game_pc_play_sound(character, HurtSound);
};