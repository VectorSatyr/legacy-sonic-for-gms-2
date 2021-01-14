function player_react_to_crumbling_floor(argument0, argument1) {
	var ind = argument0;
	var phase = argument1;

	switch (phase) {
	case "checking":
	    if (ground_id == ind) {
	        game_pc_react_to(id, ind);
	    }
	    break;

	case "entering":
	    if (ind.time_to_crumble == 0) {
	        ind.time_to_crumble = 32;
	        ind.constant = true;
	        ind.perp = id;
	    }
	    break;

	case "exiting":
	    break;
	}



}
