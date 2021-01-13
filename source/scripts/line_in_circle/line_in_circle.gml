/// @description Checks if the given line crosses the given circle
/// @argument {real} sx1  first line first point x-position
/// @argument {real} sy1  first line first point y-position
/// @argument {real} sx2  first line second point x-position
/// @argument {real} sy2  first line second point y-position
/// @argument {real} cx   circle centre point x-position
/// @argument {real} cy   circle centre point y-position
/// @argument {real} rad  circle radius
/// @returns {real} INTERSECT_NONE, INTERSECT_INSIDE or INTERSECT_OVERLAP
/// @see {@link http://paulbourke.net/geometry/pointlineplane/}
function line_in_circle(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	var sx1 = argument0;
	var sy1 = argument1;
	var sx2 = argument2;
	var sy2 = argument3;
	var cx = argument4;
	var cy = argument5;
	var rad = argument6;

	var result = INTERSECT_NONE;

	var p0 = point_in_circle(sx1, sy1, cx, cy, rad);
	var p1 = point_in_circle(sx2, sy2, cx, cy, rad);

	if (p0 and p1) {
	    result = INTERSECT_INSIDE;
	} else if (p0 or p1) {
	    result = INTERSECT_OVERLAP;
	} else {
	    var sx = sx2 - sx1;
	    var sy = sy2 - sy1;
	    var length = abs(sqr(sx) + sqr(sy));
	    if (length != 0) {
	        var p = dot_product(cx - sx1, cy - sy1, sx, sy) / length;
	        if (p >= 0 and p <= 1 and 
	            point_in_circle(sx1 + (sx * p), sy1 + (sy * p), cx, cy, rad)) {
	            result = INTERSECT_OVERLAP;
	        }
	    }
	}

	return result;



}
