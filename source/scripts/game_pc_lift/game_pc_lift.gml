function game_pc_lift(argument0, argument1, argument2) {
	var character = argument0;
	var len = argument1;
	var dir = argument2;

	with (character) {
	    var sine = dsin(dir);
	    var cosine = dcos(dir);
	    x_speed -= sine * len;
	    y_speed -= cosine * len;
	}



}
