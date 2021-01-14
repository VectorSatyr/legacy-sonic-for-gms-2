function player_react_to_death_zone(argument0, argument1) {
	var ind = argument0;
	var phase = argument1;

	switch (phase) {
	case "checking":
	    if (point_in_rectangle(x_int, y_int, ind.bbox_left, ind.bbox_top, ind.bbox_right, ind.bbox_bottom)) {
	        game_pc_react_to(id, ind);
	    }
	    break;

	case "entering":
	    game_pc_perform(id, player_is_defeated);
	    game_pc_play_sound(id, HurtSound);
	    break;

	case "exiting":
	    break;
	}



}
