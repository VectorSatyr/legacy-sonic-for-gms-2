/// @description Checks if the given rectangle overlaps the given circle (handles more edge cases than rectangle_in_circle)
/// @argument {real} sx1  rectangle top-left point x-position
/// @argument {real} sy1  rectangle top-left point y-position
/// @argument {real} sx2  rectangle bottom-right point x-position
/// @argument {real} sy2  rectangle bottom-right point y-position
/// @argument {real} cx   circle centre point x-position
/// @argument {real} cy   circle centre point y-position
/// @argument {real} rad  circle radius
/// @returns {boolean}
/// @see {@link http://math.stackexchange.com/a/243525}
function rectangle_in_circle_full(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	var sx1 = argument0;
	var sy1 = argument1;
	var sx2 = argument2;
	var sy2 = argument3;
	var cx = argument4;
	var cy = argument5;
	var rad = argument6;

	var result = INTERSECT_NONE;

	var circle = rectangle_in_circle(sx1, sy1, sx2, sy2, cx, cy, rad);

	if (circle != 0) {
	    result = circle; // source is in destination
	} else if (point_in_rectangle(cx, cy, sx1, sy1, sx2, sy2)) {
	    result = INTERSECT_OVERLAP; // destination is in source
	} else if (line_in_circle(sx1, sy1, sx2, sy1, cx, cy, rad) or
	    line_in_circle(sx1, sy1, sx1, sy2, cx, cy, rad) or
	    line_in_circle(sx2, sy1, sx2, sy2, cx, cy, rad) or
	    line_in_circle(sx1, sy2, sx2, sy2, cx, cy, rad)) {
	    result = INTERSECT_OVERLAP; // overlapping by edge
	}

	return result;



}
