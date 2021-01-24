/// @description Checks if the given object crosses the given rectangle
/// @argument {real} x1 rectangle left-most x-position
/// @argument {real} y1 rectangle top-most y-position
/// @argument {real} x2 rectangle bottom-most x-position
/// @argument {real} y2 rectangle right-most y-position
/// @argument {real} obj object or instance index
/// @argument {boolean} prec whether or not to use precise collision checking
/// @argument {boolean} notme whether the calling instance is included in the search
/// @returns {boolean}
function collision_rectangle_intersect(x1, y1, x2, y2, obj, prec, notme)
{
	return (collision_rectangle(x1, y1, x2, y2, obj, prec, notme) != noone);
}

/// @description Checks if the given object completely overlaps the given rectangle
/// @argument {real} x1 rectangle left-most x-position
/// @argument {real} y1 rectangle top-most y-position
/// @argument {real} x2 rectangle bottom-most x-position
/// @argument {real} y2 rectangle right-most y-position
/// @argument {real} obj object or instance index
/// @argument {boolean} prec whether or not to use precise collision checking
/// @argument {boolean} notme whether the calling instance is included in the search
/// @returns {boolean}
function collision_rectangle_inside(x1, y1, x2, y2, obj, prec, notme)
{
	var p0 = (collision_point(x1, y1, obj, prec, notme) != noone);
	var p1 = (collision_point(x1, y2, obj, prec, notme) != noone);
	var p2 = (collision_point(x2, y1, obj, prec, notme) != noone);
	var p3 = (collision_point(x2, y2, obj, prec, notme) != noone);
	return (p0 and p1 and p2 and p3);
}

/// @description Checks if the given object crosses the given line
/// @argument {real} x1 line first point x-position
/// @argument {real} y1 line first point y-position
/// @argument {real} x2 line second point x-position
/// @argument {real} y2 line second point y-position
/// @argument {real} obj object or instance index
/// @argument {boolean} prec whether or not to use precise collision checking
/// @argument {boolean} notme whether the calling instance is included in the search
/// @returns {boolean}
function collision_line_intersect(x1, y1, x2, y2, obj, prec, notme)
{
	return (collision_line(x1, y1, x2, y2, obj, prec, notme) != noone);
}

/// @description Checks if the given object completely overlaps the given line
/// @argument {real} x1 line first point x-position
/// @argument {real} y1 line first point y-position
/// @argument {real} x2 line second point x-position
/// @argument {real} y2 line second point y-position
/// @argument {real} obj object or instance index
/// @argument {boolean} prec whether or not to use precise collision checking
/// @argument {boolean} notme whether the calling instance is included in the search
/// @returns {boolean}
function collision_line_inside(x1, y1, x2, y2, obj, prec, notme)
{
	var p0 = (collision_point(x1, y1, obj, prec, notme) != noone);
	var p1 = (collision_point(x2, y2, obj, prec, notme) != noone);
	return (p0 and p1);
}

/// @description Checks if the given point rests along the given line segment
/// @argument {real} px point x-position
/// @argument {real} py point y-position
/// @argument {real} x1 first line point x-position
/// @argument {real} y1 first line point y-position
/// @argument {real} x2 second line point x-position
/// @argument {real} y2 second line point y-position
/// @returns {boolean}
/// @see {@link http://geomalgorithms.com/a05-_intersect-1.html#inSegment()}
function point_line_intersect(px, py, x1, y1, x2, y2)
{
	return (x1 != x2) ?
		((x1 <= px and px <= x2) or (x1 >= px and px >= x2)) :
		((y1 <= py and py <= y2) or (y1 >= py and py >= y2));
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
function point_ellipse_intersect(px, py, cx, cy, xrad, yrad)
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
function point_quarter_ellipse_intersect(px, py, cx, cy, xrad, yrad)
{
	var x1 = min(cx, cx + xrad);
	var y1 = min(cy, cy + yrad);
	var x2 = max(cx, cx + xrad);
	var y2 = max(cy, cy + yrad);
	var rectangle = point_in_rectangle(px, py, x1, y1, x2, y2);
	var ellipse = point_ellipse_intersect(
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
function point_quarter_pipe_intersect(px, py, cx, cy, xrad, yrad)
{
	var x1 = min(cx, cx + xrad);
	var y1 = min(cy, cy + yrad);
	var x2 = max(cx, cx + xrad);
	var y2 = max(cy, cy + yrad);
	var rectangle = point_in_rectangle(px, py, x1, y1, x2, y2);
	var ellipse = point_ellipse_intersect(
		px, py, cx, cy, abs(xrad), abs(yrad)
	);
	return (rectangle and not ellipse);
}