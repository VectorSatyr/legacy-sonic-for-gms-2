function game_pc_animating(argument0, argument1) {
	var character = argument0;
	var animation = argument1;

	var result = false;

	with (character) {
	    if (current_animation == animation) {
	        result = true;
	    }
	}

	return result;



}
