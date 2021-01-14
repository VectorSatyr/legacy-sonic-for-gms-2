function player_react_to_glowing_spheres_gumball(argument0, argument1) {
	var ind = argument0;
	var phase = argument1;

	switch (phase) {
	case "checking":
	    if (game_pc_in_shape(id, ind, x_radius, y_radius)) {
	        game_pc_react_to(id, ind);
	    }
	    break;

	case "entering":
		ind.player = id;
		instance_perform_user_event(ind, 0);
		instance_destroy(ind);
	    break;

	case "exiting":
	    break;
	}


}
