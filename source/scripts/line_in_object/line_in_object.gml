/// @description Checks if the given line crosses the given object
/// @argument {real} x1 line first point x-position
/// @argument {real} y1 line first point y-position
/// @argument {real} x2 line second point x-position
/// @argument {real} y2 line second point y-position
/// @argument {real} obj object or instance index
/// @argument {boolean} prec whether or not to use precise collision checking
/// @argument {boolean} notme whether the calling instance is included in the search
/// @returns {real} INTERSECT_NONE, INTERSECT_INSIDE or INTERSECT_OVERLAP
function line_in_object(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	var x1 = argument0;
	var y1 = argument1;
	var x2 = argument2;
	var y2 = argument3;
	var obj = argument4;
	var prec = argument5;
	var notme = argument6;

	var result = INTERSECT_NONE;

	var p0 = (collision_point(x1, y1, obj, prec, notme) != noone);
	var p1 = (collision_point(x2, y2, obj, prec, notme) != noone);

	if (p0 and p1) {
	    result = INTERSECT_INSIDE;
	} else if (p0 or p1) {
	    result = INTERSECT_OVERLAP;
	} else if (collision_line(x1, y1, x2, y2, obj, prec, notme) != noone) {
	    result = INTERSECT_OVERLAP;
	}

	return result;



}
