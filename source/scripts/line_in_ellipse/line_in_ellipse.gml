/// @description Checks if the given line crosses the given ellipse
/// @argument {real} sx1 first line first point x-position
/// @argument {real} sy1 first line first point y-position
/// @argument {real} sx2 first line second point x-position
/// @argument {real} sy2 first line second point y-position
/// @argument {real} cx ellipse centre point x-position
/// @argument {real} cy ellipse centre point y-position
/// @argument {real} xrad ellipse x-radius
/// @argument {real} yrad ellipse y-radius
/// @returns {real} INTERSECT_NONE, INTERSECT_INSIDE or INTERSECT_OVERLAP
/// @see {@link http://math.stackexchange.com/a/243525}
function line_in_ellipse(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	var sx1 = argument0;
	var sy1 = argument1;
	var sx2 = argument2;
	var sy2 = argument3;
	var cx = argument4;
	var cy = argument5;
	var xrad = argument6;
	var yrad = argument7;

	var result = INTERSECT_NONE;

	if (xrad == yrad) {
	    result = line_in_circle(sx1, sy1, sx2, sy2, cx, cy, xrad);
	} else {
	    var rx = sx1 - cx;
	    var ry = sy1 - cy;
	    var sx = sx2 - cx;
	    var sy = sy2 - cy;
	    var s;
	    if (xrad > yrad) {
	        // scale to x-radius
	        s = xrad / yrad;
	        result = line_in_circle(rx, ry * s, sx, sy * s, 0, 0, xrad);
	    } else {
	        // scale to y-radius
	        s = yrad / xrad;
	        result = line_in_circle(rx * s, ry, sx * s, sy, 0, 0, yrad);
	    }
	}

	return result;



}
