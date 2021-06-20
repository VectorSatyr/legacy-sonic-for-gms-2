/// @description Checks if the given view index is valid
/// @argument {real} vind view port
/// @returns {boolean}
function view_exists(vind)
{
	return includes(vind, 0, MAX_VIEW_COUNT - 1);
}

/// @description Centers the given camera at the given point, taking the room boundaries into consideration
/// @argument {real} vind view port
/// @argument {real} x focal point x-position
/// @argument {real} y focal point y-position
function camera_centre(camera, ox, oy)
{
	var view_width = camera_get_view_width(camera);
	var view_height = camera_get_view_height(camera);
	var _x = clamp(ox - (view_width * 0.5), 0, room_width - view_width);
	var _y = clamp(oy - (view_height * 0.5), 0, room_height - view_height);
	camera_set_view_pos(camera, _x, _y);
}

/// @description Centers the given view at the given point, taking the room boundaries into consideration
/// @argument {real} vind view port
/// @argument {real} x focal point x-position
/// @argument {real} y focal point y-position
function view_centre(vind, ox, oy)
{
	if (view_exists(vind)) {
		camera_centre(view_get_camera(vind), ox, oy);
	}
}

/// @description Moves the specified camera as if camera_set_view_target were set to an instance at point {ox, oy}
/// @argument {real} vind view port
/// @argument {real} x focal point x-position
/// @argument {real} y focal point y-position
function camera_follow(camera, ox, oy)
{
	var view_x = camera_get_view_x(camera);
	var view_y = camera_get_view_y(camera);
	var view_width = camera_get_view_width(camera);
	var view_height = camera_get_view_height(camera);

	// calculate offset from centre point
	var cx = view_x + (view_width * 0.5);
	var cy = view_y + (view_height * 0.5);
	var ocx = ox - cx;
	var ocy = oy - cy;

	// limit to view border
	var hborder = (view_width * 0.5) - camera_get_view_border_x(camera);
	var vborder = (view_height * 0.5) - camera_get_view_border_y(camera);
	ocx = max(abs(ocx) - hborder, 0) * sign(ocx);
	ocy = max(abs(ocy) - vborder, 0) * sign(ocy);

	// limit movement speed
	var view_speed_x = camera_get_view_speed_x(camera);
	if (includes(view_speed_x, 0, abs(ocx))) {
		ocx = view_speed_x * sign(ocx);
	}
	var view_speed_y = camera_get_view_speed_y(camera);
	if (includes(view_speed_y, 0, abs(ocy))) {
		ocy = view_speed_y * sign(ocy);
	}

	// move the view
	if (ocx != 0 or ocy != 0) {
		var _x = clamp(view_x + ocx, 0, room_width - view_width);
		var _y = clamp(view_y + ocy, 0, room_height - view_height);
		camera_set_view_pos(camera, _x, _y);
	}
}

/// @description Moves the specified view as if view_object[vind] were set to an instance at point {ox, oy}
/// @argument {real} vind view port
/// @argument {real} x focal point x-position
/// @argument {real} y focal point y-position
function view_follow(vind, ox, oy)
{
	if (view_exists(vind)) {
		camera_follow(view_get_camera(vind), ox, oy);
	}
}

/// @description Checks if an instance is currently visible in any view (always returns true if views are not enabled)
/// @argument {real} ind instance index
/// @argument {real} [padding] (optional) pixels to extend the size of each view when checking the range
/// @returns {boolean}
function instance_on_screen(ind)
{
	var padding = (argument_count >= 2) ? argument[1] : 0;
	var result = (not view_enabled);
	if (not result) {
		var x1 = ind.x - padding;
		var y1 = ind.y - padding;
		var x2 = ind.x + padding;
		var y2 = ind.y + padding;
		for (var vind = 0; vind < MAX_VIEW_COUNT; ++vind) {
			if (view_get_visible(vind) and rectangle_in_view(x1, y1, x2, y2, vind)) {
				result = true;
				break;
			}
		}
	}
	return result;
}