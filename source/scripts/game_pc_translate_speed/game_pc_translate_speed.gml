function game_pc_translate_speed(argument0, argument1, argument2) {
	var character = argument0;
	var len = argument1;
	var dir = argument2;

	with (character) {
	    var sine = dsin(dir);
	    var cosine = dcos(dir);
	    x_speed = cosine * len;
	    y_speed = -(sine * len);
	}



}
