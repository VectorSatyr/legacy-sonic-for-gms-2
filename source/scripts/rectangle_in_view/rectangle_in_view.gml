/// @description Checks if the given rectangle crosses the given view port
/// @argument {real} x1 rectangle top-left point x-position
/// @argument {real} y1 rectangle top-left point y-position
/// @argument {real} x2 rectangle bottom-right point x-position
/// @argument {real} y2 rectangle bottom-right point y-position
/// @argument {real} vind view port
/// @returns {real} INTERSECT_NONE, INTERSECT_INSIDE or INTERSECT_OVERLAP
function rectangle_in_view(argument0, argument1, argument2, argument3, argument4) {
	var x1 = argument0;
	var y1 = argument1;
	var x2 = argument2;
	var y2 = argument3;
	var vind = argument4;

	var result = INTERSECT_NONE;

	if (view_exists(vind)) {
		var cam = view_get_camera(vind);
	    var vx1 = camera_get_view_x(cam);
	    var vy1 = camera_get_view_y(cam);
	    var vx2 = vx1 + camera_get_view_width(cam);
	    var vy2 = vy1 + camera_get_view_height(cam);
	    result = rectangle_in_rectangle(x1, y1, x2, y2, vx1, vy1, vx2, vy2);
	}

	return result;



}
