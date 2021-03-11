/// @description Checks if the given rectangle overlaps the given quarter pipe
/// @argument {real} sx1 rectangle top-left point x-position
/// @argument {real} sy1 rectangle top-left point y-position
/// @argument {real} sx2 rectangle bottom-right point x-position
/// @argument {real} sy2 rectangle bottom-right point y-position
/// @argument {real} cx pipe centre point x-position
/// @argument {real} cy pipe centre point y-position
/// @argument {real} xrad pipe x-radius
/// @argument {real} yrad pipe y-radius
/// @returns {boolean}
function rectangle_in_quarter_pipe(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	var sx1 = argument0;
	var sy1 = argument1;
	var sx2 = argument2;
	var sy2 = argument3;
	var cx = argument4;
	var cy = argument5;
	var xrad = argument6;
	var yrad = argument7;

	var result = INTERSECT_NONE;

	var rectangle = rectangle_in_rectangle(sx1, sy1, sx2, sy2, cx, cy, cx + xrad, cy + yrad);
	var ellipse = rectangle_in_ellipse(sx1, sy1, sx2, sy2, cx, cy, abs(xrad), abs(yrad));

	if (rectangle != 0 and ellipse != 1) {
	    if (ellipse == 0) {
	        result = rectangle;
	    } else if (rectangle == 1) {
	        result = INTERSECT_OVERLAP;
	    } else if (rectangle_in_rectangle(cx, cy, cx + xrad, cy + yrad, sx1, sy1, sx2, sy2) == 1) {
	        result = INTERSECT_OVERLAP;
	    } else if (line_in_rectangle(cx + xrad, cy, cx + xrad, cy + yrad, sx1, sy1, sx2, sy2) or
	        line_in_rectangle(cx, cy + yrad, cx + xrad, cy + yrad, sx1, sy1, sx2, sy2)) {
	        result = INTERSECT_OVERLAP;
	    } else if (point_in_quarter_pipe(sx1, sy1, cx, cy, xrad, yrad) or
	        point_in_quarter_pipe(sx1, sy2, cx, cy, xrad, yrad) or
	        point_in_quarter_pipe(sx2, sy1, cx, cy, xrad, yrad) or
	        point_in_quarter_pipe(sx2, sy2, cx, cy, xrad, yrad)) {
	        result = INTERSECT_OVERLAP;
	    }
	}

	return result;


}
