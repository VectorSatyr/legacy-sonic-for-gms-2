function game_pc_camera_state_aerial(argument0) {
	var vind = argument0;

	if (look_x_distance != 0) {
	    look_x_distance -= 2 * sign(look_x_distance);
	}
	if (look_y_distance != 0) {
	    look_y_distance -= 2 * sign(look_y_distance);
	}

	var cam = view_get_camera(vind);
	var speed_h = x_speed * (freeze_time <= 0);
	var speed_v = min(min_y_speed + abs(y - yprevious), y_speed);
	var border_x = camera_get_view_border_x(cam);
	var border_y = (camera_get_view_height(cam) * 0.5) - y_border;
	camera_set_view_speed(cam, speed_h, speed_v);
	camera_set_view_border(cam, border_x, border_y);

	game_pc_camera_state_common(vind);



}
