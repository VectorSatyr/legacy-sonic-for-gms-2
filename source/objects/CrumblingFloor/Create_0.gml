/// @description Initialize
event_inherited();
bottom_solid = false;
normal = 0;
perp = noone;
crumbling = false;
total_collumns = sprite_width div cell_width;
total_rows = sprite_height div cell_height;
reaction_test = function (character)
{
	with (character) {
		if (ground_id == other.id) {
			game_pc_react_to(id, other.id);
		}
	}
};
reaction_on_enter = function (character)
{
	if (not crumbling) {
		crumbling = true;
		constant = true;
		perp = character;
	}
};