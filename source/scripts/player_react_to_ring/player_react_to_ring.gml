function player_react_to_ring(argument0, argument1) {
	var ind = argument0;
	var phase = argument1;

	switch (phase) {
	case "checking":
	    if (state != player_is_hurt and recovery_time <= 90 and
	        game_pc_in_shape(id, ind, x_radius, y_radius)) {
	        game_pc_react_to(id, ind);
	    }
	    break;

	case "entering":
	    game_player_change_rings(owner, 1);
		game_particles_spawn("ring_sparkle", ind.x, ind.y);
	    instance_destroy(ind);
	    break;

	case "exiting":
	    break;
	}



}
