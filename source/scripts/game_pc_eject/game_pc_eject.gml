function game_pc_eject(argument0, argument1, argument2) {
	var character = argument0;
	var len = argument1;
	var dir = argument2;

	with (character) {
	    var sine = dsin(dir);
	    var cosine = dcos(dir);
	    game_pc_position(id, x - (sine * len), y - (cosine * len));
	}



}
