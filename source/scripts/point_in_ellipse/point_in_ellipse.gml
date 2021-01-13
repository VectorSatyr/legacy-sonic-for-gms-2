/// @description Checks if the given point lines within the given ellipse
/// @argument {real} px point x-position
/// @argument {real} py point y-position
/// @argument {real} cx ellipse centre point x-position
/// @argument {real} cy ellipse centre point y-position
/// @argument {real} xrad ellipse x radius
/// @argument {real} yrad ellipse y radius
/// @returns {boolean}
/// @see {@link http://math.stackexchange.com/a/243525}
function point_in_ellipse(argument0, argument1, argument2, argument3, argument4, argument5) {
	var px = argument0;
	var py = argument1;
	var cx = argument2;
	var cy = argument3;
	var xrad = argument4;
	var yrad = argument5;

	var intersect = false;

	if (xrad == yrad) {
	    intersect = point_in_circle(px, py, cx, cy, xrad);
	} else {
	    var qx = px - cx;
	    var qy = py - cy;
	    if (xrad > yrad) {
	        // scale to x-radius
	        intersect = point_in_circle(qx, qy * (xrad / yrad), 0, 0, xrad);
	    } else {
	        // scale to y-radius
	        intersect = point_in_circle(qx * (yrad / xrad), qy, 0, 0, yrad);
	    }
	}

	return intersect;



}
