function game_pc_perform() {
	var reset = false;
	switch (argument_count) {
	case 3: reset = argument[2];
	default:
	    var character = argument[0];
	    var action = argument[1];
	}

	with (character) {
	    if (state != action or reset) {
	        state_previous = state;
	        state = action;
	        state_changed = true;
	        if (script_exists(state_previous)) {
	            script_execute(state_previous, "finish");
	        }
	        if (script_exists(state)) {
	            script_execute(state, "start");
	        }
	    }
	}



}
