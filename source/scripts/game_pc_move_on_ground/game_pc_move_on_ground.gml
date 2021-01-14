/// @description Grounded movement code. Used for 'grounded' states such as running, rolling and spin-dashing.
/// @param {Real} character player character instance index
function game_pc_move_on_ground(argument0) {
	var character = argument0;

	with (character) {
	    game_pc_ride(id, ground_id);
	    game_pc_memorize_reactions(id);
	    game_pc_sample_x(id, game_pc_step_on_ground);
	}


}
