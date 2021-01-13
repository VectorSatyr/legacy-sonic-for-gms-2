/// @description Executes the given script a number of times equal to the player's current horizontal speed divided by the horizontal size of the virtual mask. Ensures the player does not 'miss' intersections at higher speeds.
/// @param {Real} character player character instance index
/// @param {Real} script index of movement script (must be formatted to accept a single 'step' as an argument)
function game_pc_sample_x(argument0, argument1) {
	var character = argument0;
	var script = argument1;

	with (character) {
	    var total_steps = 1 + floor(abs(x_speed) / x_radius);
	    var step = x_speed / total_steps;
	    repeat (total_steps) {
	        script_execute(script, character, step);
	    }
	}



}
