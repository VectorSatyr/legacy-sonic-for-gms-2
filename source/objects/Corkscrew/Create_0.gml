/// @description Initialize
event_inherited();
instance_create_depth(x, y, -depth, CorkscrewFront);
threshold = 5;
mask = instance_create_layer(xstart, ystart, "collisions", Solid);
mask.sprite_index = CorkscrewMaskSprite;
mask.bottom_solid = false;
mask.normal = 0;
mask.reaction_test = function (character)
{
	with (character) {
		if (not on_the_ground or abs(x_speed) < other.threshold) {
			var pos = ds_list_find_index(local_solids, other.mask);
			if (pos != -1) {
				ds_list_delete(local_solids, pos);
			}
		}
	}
};
reaction_test = function (character)
{
	with (character) {
		if (ground_id == other.mask) {
			game_pc_react_to(id, other.id);
		}
	}
};
reaction_on_enter = function (character)
{
	with (character) {
		if (state != player_is_rolling) {
			game_pc_perform(id, player_is_linked);
			game_pc_animate(id, "flip", true);
			linked_object_id = other.id;
		}
	}
};
reaction_on_exit = function (character)
{
	with (character) {
		if (linked_object_id = other.id) {
			game_pc_perform(id, player_is_running);
		}
	}
};