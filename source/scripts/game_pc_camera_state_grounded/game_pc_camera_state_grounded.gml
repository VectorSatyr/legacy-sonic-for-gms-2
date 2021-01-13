function game_pc_camera_state_grounded(argument0) {
	var vind = argument0;

	var cam = view_get_camera(vind);
	var speed_h = x_speed * (freeze_time <= 0);
	var speed_v = min(min_y_speed + abs(y - yprevious), y_speed);
	var border_x = camera_get_view_border_x(cam);
	var border_y = (camera_get_view_height(cam) * 0.5);
	camera_set_view_speed(cam, speed_h, speed_v);
	camera_set_view_border(cam, border_x, border_y);

	game_pc_camera_state_common(vind);



}
