/// @description Initialize
event_inherited();
reaction_test = function (character)
{
	if (
		point_in_rectangle(
			character.x_int, character.y_int, 
			bbox_left, bbox_top, bbox_right, bbox_bottom
		)
	) {
		game_pc_react_to(character, id);
	}
};
reaction_on_enter = function (character)
{
	var reverse = (
		sign(image_xscale) == sign(character.x_int - character.xprevious)
	);
	character.depth_mask = (reverse) ? int64(left) : int64(right);
}