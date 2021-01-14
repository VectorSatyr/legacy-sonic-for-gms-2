/// @description Redirects the player's gravity. (Does nothing if the player is already moving at the given angle)
/// @param {Real} character player character instance index
/// @param {Real} angle direction of gravity to move
function game_pc_redirect_gravity(argument0, argument1) {
	var character = argument0;
	var angle = argument1;

	with (character) {
	    if (gravity_direction != angle) {
	        gravity_direction = angle;
	        game_pc_redirect(id, gravity_direction);
	        game_pc_align(id, gravity_direction);
	    }
	}



}
