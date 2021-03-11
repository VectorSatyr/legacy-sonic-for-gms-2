/// @description Checks if the given point rests along the given line segment
/// @argument {real} px point x-position
/// @argument {real} py point y-position
/// @argument {real} x1 first line point x-position
/// @argument {real} y1 first line point y-position
/// @argument {real} x2 second line point x-position
/// @argument {real} y2 second line point y-position
/// @returns {boolean}
/// @see {@link http://geomalgorithms.com/a05-_intersect-1.html#inSegment()}
function point_in_segment(px, py, x1, y1, x2, y2)
{
	return (x1 != x2) ?
		includes(px, min(x1, x2), max(x1, x2)) :
		includes(py, min(y1, y2), max(y1, y2));
}

/// @description Checks if the given point lies within the given ellipse
/// @argument {real} px point x-position
/// @argument {real} py point y-position
/// @argument {real} cx ellipse centre point x-position
/// @argument {real} cy ellipse centre point y-position
/// @argument {real} xrad ellipse x radius
/// @argument {real} yrad ellipse y radius
/// @returns {boolean}
/// @see {@link http://math.stackexchange.com/a/243525}
function point_in_ellipse(px, py, cx, cy, xrad, yrad)
{
	var qx = px - cx;
	var qy = py - cy;
	return (yrad > xrad) ?
		point_in_circle(qx * (yrad / xrad), qy, 0, 0, yrad) :
		point_in_circle(qx, qy * (xrad / yrad), 0, 0, xrad);
}

/// @description Checks if the given point lies within the given quarter ellipse
/// @argument {real} px point x-position
/// @argument {real} py point y-position
/// @argument {real} cx ellipse centre point x-position
/// @argument {real} cy ellipse centre point y-position
/// @argument {real} xrad ellipse x radius
/// @argument {real} yrad ellipse y radius
/// @returns {boolean}
function point_in_quarter_ellipse(px, py, cx, cy, xrad, yrad)
{
	var x1 = min(cx, cx + xrad);
	var y1 = min(cy, cy + yrad);
	var x2 = max(cx, cx + xrad);
	var y2 = max(cy, cy + yrad);
	var rectangle = point_in_rectangle(px, py, x1, y1, x2, y2);
	var ellipse = point_in_ellipse(
		px, py, cx, cy, abs(xrad), abs(yrad)
	);
	return (rectangle and ellipse);
}

/// @description Checks if the given point lies within the given quarter pipe
/// @argument {real} px point x-position
/// @argument {real} py point y-position
/// @argument {real} cx ellipse centre point x-position
/// @argument {real} cy ellipse centre point y-position
/// @argument {real} xrad ellipse x radius
/// @argument {real} yrad ellipse y radius
/// @returns {boolean}
function point_in_quarter_pipe(px, py, cx, cy, xrad, yrad)
{
	var x1 = min(cx, cx + xrad);
	var y1 = min(cy, cy + yrad);
	var x2 = max(cx, cx + xrad);
	var y2 = max(cy, cy + yrad);
	var rectangle = point_in_rectangle(px, py, x1, y1, x2, y2);
	var ellipse = point_in_ellipse(
		px, py, cx, cy, abs(xrad), abs(yrad)
	);
	return (rectangle and not ellipse);
}