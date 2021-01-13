/// @description Redirects the player's movement. (Does nothing if the player is already moving at the given angle)
/// @param {Real} angle direction to move
function game_pc_redirect(argument0, argument1) {
	var character = argument0;
	var angle = argument1;

	with (character) {
	    if (direction != angle) {
	        direction = angle;
	        local_direction = angle_wrap(angle - gravity_direction);
	    }
	}



}
