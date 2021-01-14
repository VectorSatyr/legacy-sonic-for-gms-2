/// @description Finds the first solid intersecting the lower half of the player's virtual mask.
/// @param {Real} character player character instance index
/// @param {Real} radius distance in pixels to extend the mask (downward)
/// @returns {Real} index of whichever instance was found, or noone
function game_pc_lower_collision_solid(argument0, argument1) {
	var character = argument0;
	var radius = argument1;

	var result = noone;

	with (character) {
	    var total = ds_list_size(local_solids);
	    var ind;
	    for (var n = 0; n < total; ++n) {
	        ind = local_solids[| n];
	        if (instance_exists(ind)) {
	            if (ind.top_solid and game_pc_lower_in_shape(id, ind, radius)) {
	                result = ind;
	                break;
	            }
	        }
	    }
	}

	return result;



}
