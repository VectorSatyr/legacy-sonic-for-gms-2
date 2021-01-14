function game_pc_animate() {
	var reset = false;
	switch (argument_count) {
	case 3: reset = argument[2];
	default:
	    var character = argument[0];
	    var name = argument[1];
	}

	with (character) {
	    var index = ds_map_find_value(animations, name);
	    if ((index != -1 and timeline_index != index) or reset) {
	        current_animation = name;
			timeline_set(id, index, 1, true, reset);
	    }
	}


}
