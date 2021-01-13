/// @description Checks if the given rectangle overlaps the given ellipse
/// @argument {real} sx1 rectangle top-left point x-position
/// @argument {real} sy1 rectangle top-left point y-position
/// @argument {real} sx2 rectangle bottom-right point x-position
/// @argument {real} sy2 rectangle bottom-right point y-position
/// @argument {real} cx ellipse centre point x-position
/// @argument {real} cy ellipse centre point y-position
/// @argument {real} xrad ellipse x-radius
/// @argument {real} yrad ellipse y-radius
/// @returns {boolean}
/// @see {@link http://math.stackexchange.com/a/243525}
function rectangle_in_ellipse(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	var sx1 = argument0;
	var sy1 = argument1;
	var sx2 = argument2;
	var sy2 = argument3;
	var cx = argument4;
	var cy = argument5;
	var xrad = argument6;
	var yrad = argument7;

	var result = INTERSECT_NONE;

	var ellipse = 0;

	if (xrad == yrad) {
	    ellipse = rectangle_in_circle_full(sx1, sy1, sx2, sy2, cx, cy, xrad);
	} else {
	    var rx = sx1 - cx;
	    var ry = sy1 - cy;
	    var sx = sx2 - cx;
	    var sy = sy2 - cy;
	    var s;
	    if (xrad > yrad) {
	        // scale to x-radius
	        s = xrad / yrad;
	        ellipse = rectangle_in_circle_full(rx, ry * s, sx, sy * s, 0, 0, xrad);
	    } else {
	        // scale to y-radius
	        s = yrad / xrad;
	        ellipse = rectangle_in_circle_full(rx * s, ry, sx * s, sy, 0, 0, yrad);
	    }
	}

	if (ellipse != 0) {
	    result = ellipse; // source is in destination
	} else if (point_in_rectangle(cx, cy, sx1, sy1, sx2, sy2)) {
	    result = INTERSECT_OVERLAP; // destination is in source
	} else if (line_in_ellipse(sx1, sy1, sx2, sy1, cx, cy, xrad, yrad) or
	    line_in_ellipse(sx1, sy1, sx1, sy2, cx, cy, xrad, yrad) or
	    line_in_ellipse(sx2, sy1, sx2, sy2, cx, cy, xrad, yrad) or
	    line_in_ellipse(sx1, sy2, sx2, sy2, cx, cy, xrad, yrad)) {
	    result = INTERSECT_OVERLAP; // overlapping by edge
	}

	return result;



}
