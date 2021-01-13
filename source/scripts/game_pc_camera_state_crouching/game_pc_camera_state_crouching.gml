function game_pc_camera_state_crouching(argument0) {
	var vind = argument0;

	if (look_time <= 0) {
	    if (look_y_distance < look_distance_down) {
	        look_y_distance += 2;
	    }
	} else if (look_y_distance != 0) {
	    look_y_distance -= 2 * sign(look_y_distance);
	}

	game_pc_camera_state_common(vind);



}
