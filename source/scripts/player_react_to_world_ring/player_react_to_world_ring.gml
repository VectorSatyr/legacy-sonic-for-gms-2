function player_react_to_world_ring(argument0, argument1) {
	var ind = argument0;
	var phase = argument1;

	switch (phase) {
	case "entering":
	    with (ZoneConfiguration) {
	        --total_ring_count;
	    }
	    break;
	}

	return player_react_to_ring(ind, phase);


}
