/// @description Centers the given view at the given point, taking the room boundaries into consideration
/// @argument {real} vind view port
/// @argument {real} ox focal point x-position
/// @argument {real} oy focal point y-position
function view_centre(argument0, argument1, argument2) {
	var vind = argument0;
	var ox = argument1;
	var oy = argument2;

	if (view_exists(vind)) {
		var cam = view_get_camera(vind);
		var view_x = clamp(ox - (camera_get_view_width(cam) * 0.5), 0, room_width - camera_get_view_width(cam));
		var view_y = clamp(oy - (camera_get_view_height(cam) * 0.5), 0, room_height - camera_get_view_height(cam));
		camera_set_view_pos(cam, view_x, view_y);
	}



}
