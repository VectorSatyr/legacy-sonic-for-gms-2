/// @description Checks if the given line crosses the given quarter ellipse
/// @argument {real} sx1 first line first point x-position
/// @argument {real} sy1 first line first point y-position
/// @argument {real} sx2 first line second point x-position
/// @argument {real} sy2 first line second point y-position
/// @argument {real} cx ellipse centre point x-position
/// @argument {real} cy ellipse centre point y-position
/// @argument {real} xrad ellipse x-radius
/// @argument {real} yrad ellipse y-radius
/// @returns {real} INTERSECT_NONE, INTERSECT_INSIDE or INTERSECT_OVERLAP
function line_in_quarter_ellipse(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	var sx1 = argument0;
	var sy1 = argument1;
	var sx2 = argument2;
	var sy2 = argument3;
	var cx = argument4;
	var cy = argument5;
	var xrad = argument6;
	var yrad = argument7;

	var result = INTERSECT_INSIDE;

	var dx1 = cx;
	var dy1 = cy;
	var dx2 = cx + xrad;
	var dy2 = cy + yrad;
	if (dx1 > dx2) {
	    dx1 = cx + xrad;
	    dx2 = cx;
	}
	if (dy1 > dy2) {
	    dy1 = cy + yrad;
	    dy2 = cy;
	}

	var rectangle = line_in_rectangle(sx1, sy1, sx2, sy2, dx1, dy1, dx2, dy2);
	var ellipse = line_in_ellipse(sx1, sy1, sx2, sy2, cx, cy, abs(xrad), abs(yrad));
	if (rectangle == 0 or ellipse == 0) {
	    result = INTERSECT_NONE;
	} else if (rectangle == 2 or ellipse == 2) {
	    result = INTERSECT_OVERLAP;
	}

	return result;



}
