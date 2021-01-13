function game_pc_camera_state_normal(argument0) {
	var vind = argument0;

	if (look_x_distance != 0) {
	    look_x_distance -= 2 * sign(look_x_distance);
	}
	if (look_y_distance != 0) {
	    look_y_distance -= 2 * sign(look_y_distance);
	}

	game_pc_camera_state_grounded(vind);



}
