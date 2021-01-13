/// @description Checks if the given rectangle overlaps the given triangle (handles more edge cases than rectangle_in_triangle)
/// @argument {real} sx1  rectangle top-left point x-position
/// @argument {real} sy1  rectangle top-left point y-position
/// @argument {real} sx2  rectangle bottom-right point x-position
/// @argument {real} sy2  rectangle bottom-right point y-position
/// @argument {real} x1   triangle first point x-position
/// @argument {real} y1   triangle first point y-position
/// @argument {real} x2   triangle second point x-position
/// @argument {real} y2   triangle second point y-position
/// @argument {real} x3   triangle third point x-position
/// @argument {real} y3   triangle third point y-position
/// @returns {boolean}
/// @see {@link http://math.stackexchange.com/a/243525}
function rectangle_in_triangle_full(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {
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

	var triangle = rectangle_in_triangle(sx1, sy1, sx2, sy2, x1, y1, x2, y2, x3, y3);

	if (triangle != 0) {
	    result = triangle; // source is in destination
	} else if (point_in_rectangle(x1, y1, sx1, sy1, sx2, sy2) or
	    point_in_rectangle(x2, y2, sx1, sy1, sx2, sy2) or
	    point_in_rectangle(x3, y3, sx1, sy1, sx2, sy2)) {
	    result = INTERSECT_OVERLAP; // destination is in source
	} else if (line_in_rectangle(x1, y1, x2, y2, sx1, sy1, sx2, sy2) or
	    line_in_rectangle(x2, y2, x3, y3, sx1, sy1, sx2, sy2) or
	    line_in_rectangle(x1, y1, x3, y3, sx1, sy1, sx2, sy2)) {
	    result = INTERSECT_OVERLAP; // overlapping by edge
	}

	return result;



}
