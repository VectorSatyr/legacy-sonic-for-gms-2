/// @description Aerial movement code. Used for airborne states such as jumping and falling.
/// @param {Real} character player character instance index
function game_pc_move_in_air(argument0) {
	var character = argument0;

	with (character) {
	    game_pc_memorize_reactions(id);
	    game_pc_sample_x(id, game_pc_step_in_air_horizontal);
	    game_pc_memorize_reactions(id);
	    game_pc_sample_y(id, game_pc_step_in_air_vertical);
	}



}
