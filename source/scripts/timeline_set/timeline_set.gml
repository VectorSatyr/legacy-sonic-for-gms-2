/// @description Assigns the given timeline to the calling instance
/// @argument {real} obj object or instance index
/// @argument {real} timeline timeline index
/// @argument {real} frames (Optional) timeline speed in frames
/// @argument {boolean} loop (Optional) whether or not the timeline should repeat
/// @argument {boolean} reset (Optional) whether or not to ignore if the same timeline is already assigned
function timeline_set() {
	var frames = 1;
	var loop = true;
	var reset = true;
	switch (argument_count) {
	case 5: reset = argument[4];
	case 4: loop = argument[3];
	case 3: frames = argument[2];
	default:
		var timeline = argument[1];
		var obj = argument[0];
	}

	with (obj) {
		if (timeline_index != timeline or reset) {
	        timeline_index = timeline;
	        timeline_speed = 1 / frames;
	        timeline_position = 0;
			timeline_loop = loop;
	        if (game_is_running() and not timeline_running) {
	            timeline_running = true;
	        }
	    }
	}


}
