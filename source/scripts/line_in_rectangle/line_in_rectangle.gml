/// @description Checks if the given line crosses the given rectangle
/// @argument {real} sx1  line first point x-position
/// @argument {real} sy1  line first point y-position
/// @argument {real} sx2  line second point x-position
/// @argument {real} sy2  line second point y-position
/// @argument {real} dx1  rectangle top-left point x-position
/// @argument {real} dy1  rectangle top-left point y-position
/// @argument {real} dx2  rectangle bottom-right point x-position
/// @argument {real} dy2  rectangle bottom-right point y-position
/// @returns {real} INTERSECT_NONE, INTERSECT_INSIDE or INTERSECT_OVERLAP
function line_in_rectangle(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	var sx1 = argument0;
	var sy1 = argument1;
	var sx2 = argument2;
	var sy2 = argument3;
	var dx1 = argument4;
	var dy1 = argument5;
	var dx2 = argument6;
	var dy2 = argument7;

	var result = INTERSECT_NONE;

	var p0 = point_in_rectangle(sx1, sy1, dx1, dy1, dx2, dy2);
	var p1 = point_in_rectangle(sx2, sy2, dx1, dy1, dx2, dy2);

	if (p0 and p1) {
	    result = INTERSECT_INSIDE;
	} else if (p0 or p1) {
	    result = INTERSECT_OVERLAP;
	} else if (line_in_line(sx1, sy1, sx2, sy2, dx1, dy1, dx2, dy1) or 
	    line_in_line(sx1, sy1, sx2, sy2, dx1, dy1, dx1, dy2) or
	    line_in_line(sx1, sy1, sx2, sy2, dx2, dy1, dx2, dy2) or
	    line_in_line(sx1, sy1, sx2, sy2, dx1, dy2, dx2, dy2)) {
	    result = INTERSECT_OVERLAP;
	}

	return result;



}
