/// @description Calculates the amount of force to apply in order to slide down the current ground.
/// @param {Real} character player character instance index
/// @param {Real} force base friction value
/// @param {Real} threshold value to beat before applying friction
/// @returns {Real} slope friction amount
function game_pc_calc_slope_friction(argument0, argument1, argument2) {
	var character = argument0;
	var force = argument1;
	var threshold = argument2;

	var value = 0;

	with (character) {
	    if (on_the_ground) {
	        var sine = dsin(local_direction);
	        if (sign(sine) != sign(x_speed) or 
	            (local_direction >= 22.5 and local_direction <= 337.5)) {
	            if (abs(sine * force) > threshold) {
	                value = sine * force;
	            }
	        }
	    }
	}

	return value;



}
