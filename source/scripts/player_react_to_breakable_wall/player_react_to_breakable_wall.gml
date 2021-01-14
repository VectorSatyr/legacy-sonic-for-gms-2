function player_react_to_breakable_wall(argument0, argument1) {
	var ind = argument0;
	var phase = argument1;

	switch (phase) {
	case "checking":
	    if (spinning and game_pc_in_shape(id, ind, x_wall_radius, y_radius)) {
	        game_pc_react_to(id, ind);
	    }
	    break;

	case "entering":
	    if (not on_the_ground and y_speed >= 0 and 
	        game_pc_lower_in_shape(id, ind, y_radius)) {
	        y_speed = -5;
	        if (state == player_is_aqua_bouncing) {
	            game_pc_perform(id, player_is_jumping);
	            game_pc_play_sound(id, AquaBounceSound);
	        }
	    }

	    game_pc_play_sound(id, BreakSound);

	    instance_destroy(ind);
	    break;

	case "exiting":
	    break;
	}



}
