function player_react_to_hazard(argument0, argument1) {
	var ind = argument0;
	var phase = argument1;

	switch (phase) {
	case "checking":
	    if (state != player_is_hurt and recovery_time <= 0 and invincibility_time <= 0 and not superform and
	        game_pc_in_shape(id, ind, x_radius, y_radius)) {
	        game_pc_react_to(id, ind);
	    }
	    break;

	case "entering":
	    game_pc_damage(id, sign(x_int - ind.x));
	    break;

	case "exiting":
	    break;
	}



}
