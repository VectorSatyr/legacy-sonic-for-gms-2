function player_react_to_climbable_wall(argument0, argument1) {
	var ind = argument0;
	var phase = argument1;

	switch (phase) {
	case "checking":
	    if (state == player_is_gliding and game_pc_arms_in_shape(id, ind, x_wall_radius)) { //wall_id == ind) { //
	        game_pc_react_to(id, ind);
	    }
	    break;

	case "entering":
	    game_pc_perform(id, player_is_climbing);
	    climb_id = ind;
	    game_pc_play_sound(id, ClaspingSound);
	    break;

	case "exiting":
	    break;
	}



}
