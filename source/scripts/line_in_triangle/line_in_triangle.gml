/// @description Checks if the given line crosses the given triangle
/// @argument {real} sx1  line first point x-position
/// @argument {real} sy1  line first point y-position
/// @argument {real} sx2  line second point x-position
/// @argument {real} sy2  line second point y-position
/// @argument {real} x1   triangle first point x-position
/// @argument {real} y1   triangle first point y-position
/// @argument {real} x2   triangle second point x-position
/// @argument {real} y2   triangle second point y-position
/// @argument {real} x3   triangle third point x-position
/// @argument {real} y3   triangle third point y-position
/// @returns {real} INTERSECT_NONE, INTERSECT_INSIDE or INTERSECT_OVERLAP
function line_in_triangle(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {
	var sx1 = argument0;
	var sy1 = argument1;
	var sx2 = argument2;
	var sy2 = argument3;
	var x1 = argument4;
	var y1 = argument5;
	var x2 = argument6;
	var y2 = argument7;
	var x3 = argument8;
	var y3 = argument9;

	var result = INTERSECT_NONE;

	var p0 = point_in_triangle(sx1, sy1, x1, y1, x2, y2, x3, y3);
	var p1 = point_in_triangle(sx2, sy2, x1, y1, x2, y2, x3, y3);

	if (p0 and p1) {
	    result = INTERSECT_INSIDE;
	} else if (p0 or p1) {
	    result = INTERSECT_OVERLAP;
	} else if (line_in_line(sx1, sy1, sx2, sy2, x1, y1, x2, y2) or
	    line_in_line(sx1, sy1, sx2, sy2, x2, y2, x3, y3) or
	    line_in_line(sx1, sy1, sx2, sy2, x1, y1, x3, y3)) {
	    result = INTERSECT_OVERLAP;
	}

	return result;



}
