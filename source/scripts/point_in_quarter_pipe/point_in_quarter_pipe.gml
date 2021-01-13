/// @description Checks if the given point lines within the given quarter pipe
/// @argument {real} px point x-position
/// @argument {real} py point y-position
/// @argument {real} cx ellipse centre point x-position
/// @argument {real} cy ellipse centre point y-position
/// @argument {real} xrad ellipse x radius
/// @argument {real} yrad ellipse y radius
/// @returns {boolean}
function point_in_quarter_pipe(argument0, argument1, argument2, argument3, argument4, argument5) {
	var px = argument0;
	var py = argument1;
	var cx = argument2;
	var cy = argument3;
	var xrad = argument4;
	var yrad = argument5;

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

	var rectangle = point_in_rectangle(px, py, dx1, dy1, dx2, dy2);
	var ellipse = point_in_ellipse(px, py, cx, cy, abs(xrad), abs(yrad));

	return (rectangle and not ellipse);



}
