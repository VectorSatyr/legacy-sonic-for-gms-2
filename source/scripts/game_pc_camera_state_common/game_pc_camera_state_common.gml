function game_pc_camera_state_common(argument0) {
	var vind = argument0;

	var sine = dsin(gravity_direction);
	var cosine = dcos(gravity_direction);
	var ox = x + (look_x_distance * cosine) + (look_y_distance * sine);
	var oy = y - (look_x_distance * sine) + (look_y_distance * cosine);

	view_follow(vind, ox, oy);

	var cam = view_get_camera(vind);
	var view_x = clamp(camera_get_view_x(cam), bound_left, bound_right - camera_get_view_width(cam));
	var view_y = clamp(camera_get_view_y(cam), bound_top, bound_bottom - camera_get_view_height(cam));
	camera_set_view_pos(cam, view_x, view_y);



}
