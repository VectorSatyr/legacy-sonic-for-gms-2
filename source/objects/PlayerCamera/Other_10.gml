/// @description  Attach
if (view_exists(vind)) {
    game_camera_direct(vind, game_pc_camera_state_normal, id);
    view_centre(vind, x, y);
    bound_left = owner.bound_left;
    bound_top = owner.bound_top;
    bound_right = owner.bound_right;
    bound_bottom = owner.bound_bottom;
	var cam = view_get_camera(vind);
	var view_x = clamp(camera_get_view_x(cam), bound_left, bound_right - camera_get_view_width(cam));
	var view_y = clamp(camera_get_view_y(cam), bound_top, bound_bottom - camera_get_view_height(cam));
	var border_x = (camera_get_view_width(cam) * 0.5) - x_border;
	var border_y = (camera_get_view_height(cam) * 0.5) - y_border;
	camera_set_view_pos(cam, view_x, view_y);
	camera_set_view_border(cam, border_x, border_y);
	camera_set_view_speed(cam, x_speed, y_speed);
}

