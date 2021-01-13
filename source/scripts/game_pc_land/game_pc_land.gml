/// @description Set the given object index as the terrain the given player character is standing on.
/// @param {Real} character player character instance index
/// @param {Real} ind other instance index
function game_pc_land(argument0, argument1) {
	var character = argument0;
	var ind = argument1;

	with (character) {
	    if (ground_id != ind) {
	        ground_id = ind;
	        on_the_ground = true;
	    }
	}



}
