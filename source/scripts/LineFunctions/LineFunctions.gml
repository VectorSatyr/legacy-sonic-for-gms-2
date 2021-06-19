/// @description Returns the two-dimensional perpendicular dot product of two vectors
/// @argument {real} x1 first vector x-distance
/// @argument {real} y1 first vector y-position
/// @argument {real} x2 second vector x-position
/// @argument {real} y2 second vector y-position
/// @returns {boolean}
function perp_product(x1, y1, x2, y2)
{
	return ((x1 * y2) - (y1 * x2));
}

/// @description Checks if the given line segments intersect each other
/// @argument {real} sx1 first line first point x-position
/// @argument {real} sy1 first line first point y-position
/// @argument {real} sx2 first line second point x-position
/// @argument {real} sy2 first line second point y-position
/// @argument {real} dx1 second line first point x-position
/// @argument {real} dy1 second line first point y-position
/// @argument {real} dx2 second line second point x-position
/// @argument {real} dy2 second line second point y-position
/// @returns {boolean}
function segment_in_segment(sx1, sy1, sx2, sy2, dx1, dy1, dx2, dy2)
{
	var result = false;
	var sx = sx2 - sx1;
	var sy = sy2 - sy1;
	var dx = dx2 - dx1;
	var dy = dy2 - dy1;
	var sdx1 = sx1 - dx1;
	var sdy1 = sy1 - dy1;
	var ps = perp_product(sx, sy, sdx1, sdy1);
	var pd = perp_product(dx, dy, sdx1, sdy1);
	var psd = perp_product(sx, sy, dx, dy);
	if (abs(psd) == 0 and ps == 0 and pd == 0) { // parallel and co-linear
		var dr = dot_product(sx, sy, sx, sy);
		var ds = dot_product(dx, dy, dx, dy);
		if (dr == 0 and ds == 0) { // possibly identical points
			result = (sx1 == dx1 and sy1 == dy1);
		} else if (dr == 0) { // S is a point, but not D
			result = point_in_segment(sx1, sy1, dx2, dy2, dx2, dy2);
		} else if (ds == 0) { // D is a point, but not S
			result = point_in_segment(dx1, dy1, sx1, sy1, sx2, sy2);
		} else {
			var sdx2 = sx2 - dx1;
			var sdy2 = sy2 - dy1;
			var t0 = (dx != 0) ? (sdx1 / dx) : (sdy1 / dy);
			var t1 = (dx != 0) ? (sdx2 / dx) : (sdy2 / dy);
			result = (max(t0, t1) >= 0 and min(t0, t1) <= 1);
		}
	}
	if (not result) {
		var s = ps / psd;
		var d = pd / psd;
		result = (includes(s, 0, 1) and includes(d, 0, 1));
	}
	return result;
}

/// @description Checks if the given line segment crosses the given rectangle
/// @argument {real} sx1 line first point x-position
/// @argument {real} sy1 line first point y-position
/// @argument {real} sx2 line second point x-position
/// @argument {real} sy2 line second point y-position
/// @argument {real} dx1 rectangle top-left point x-position
/// @argument {real} dy1 rectangle top-left point y-position
/// @argument {real} dx2 rectangle bottom-right point x-position
/// @argument {real} dy2 rectangle bottom-right point y-position
/// @returns {boolean}
function segment_in_rectangle(sx1, sy1, sx2, sy2, dx1, dy1, dx2, dy2)
{
	return (
		point_in_rectangle(sx1, sy1, dx1, dy1, dx2, dy2) or 
		point_in_rectangle(sx2, sy2, dx1, dy1, dx2, dy2) or 
		segment_in_segment(sx1, sy1, sx2, sy2, dx1, dy1, dx2, dy1) or 
		segment_in_segment(sx1, sy1, sx2, sy2, dx1, dy1, dx1, dy2) or 
		segment_in_segment(sx1, sy1, sx2, sy2, dx2, dy1, dx2, dy2) or 
		segment_in_segment(sx1, sy1, sx2, sy2, dx1, dy2, dx2, dy2)
	);
}


/// @description Checks if the given line segment crosses the given rectangle
/// @argument {real} sx1 line first point x-position
/// @argument {real} sy1 line first point y-position
/// @argument {real} sx2 line second point x-position
/// @argument {real} sy2 line second point y-position
/// @argument {real} dx1 rectangle top-left point x-position
/// @argument {real} dy1 rectangle top-left point y-position
/// @argument {real} dx2 rectangle bottom-right point x-position
/// @argument {real} dy2 rectangle bottom-right point y-position
/// @returns {boolean}
function segment_inside_rectangle(sx1, sy1, sx2, sy2, dx1, dy1, dx2, dy2)
{
	return (
		point_in_rectangle(sx1, sy1, dx1, dy1, dx2, dy2) and 
		point_in_rectangle(sx2, sy2, dx1, dy1, dx2, dy2)
	);
}

/// @description Checks if the given line segment crosses the given triangle
/// @argument {real} sx1 line first point x-position
/// @argument {real} sy1 line first point y-position
/// @argument {real} sx2 line second point x-position
/// @argument {real} sy2 line second point y-position
/// @argument {real} x1 triangle first point x-position
/// @argument {real} y1 triangle first point y-position
/// @argument {real} x2 triangle second point x-position
/// @argument {real} y2 triangle second point y-position
/// @argument {real} x3 triangle third point x-position
/// @argument {real} y3 triangle third point y-position
/// @returns {boolean}
function segment_in_triangle(sx1, sy1, sx2, sy2, x1, y1, x2, y2, x3, y3)
{
	return (
		point_in_triangle(sx1, sy1, x1, y1, x2, y2, x3, y3) or 
		point_in_triangle(sx2, sy2, x1, y1, x2, y2, x3, y3) or 
		segment_in_segment(sx1, sy1, sx2, sy2, x1, y1, x2, y2) or 
		segment_in_segment(sx1, sy1, sx2, sy2, x2, y2, x3, y3) or 
		segment_in_segment(sx1, sy1, sx2, sy2, x1, y1, x3, y3)
	);
}

/// @description Checks if the given line segment crosses the given circle
/// @argument {real} sx1 first line first point x-position
/// @argument {real} sy1 first line first point y-position
/// @argument {real} sx2 first line second point x-position
/// @argument {real} sy2 first line second point y-position
/// @argument {real} cx circle centre point x-position
/// @argument {real} cy circle centre point y-position
/// @argument {real} rad circle radius
/// @returns {boolean}
/// @see {@link http://paulbourke.net/geometry/pointlineplane/}
function segment_in_circle(sx1, sy1, sx2, sy2, cx, cy, rad)
{
	var result = false;
	if (point_in_circle(sx1, sy1, cx, cy, rad) or 
		point_in_circle(sx2, sy2, cx, cy, rad)) {
		result = true;
	} else {
		var sx = sx2 - sx1;
		var sy = sy2 - sy1;
		var length = abs(sqr(sx) + sqr(sy));
		if (length != 0) {
			var p = dot_product(cx - sx1, cy - sy1, sx, sy) / length;
			result = (includes(p, 0, 1) and 
				point_in_circle(sx1 + (sx * p), sy1 + (sy * p), cx, cy, rad));
		}
	}
	return result;
}

/// @description Checks if the given line lies within the given circle
/// @argument {real} sx1 first line first point x-position
/// @argument {real} sy1 first line first point y-position
/// @argument {real} sx2 first line second point x-position
/// @argument {real} sy2 first line second point y-position
/// @argument {real} cx circle centre point x-position
/// @argument {real} cy circle centre point y-position
/// @argument {real} rad circle radius
/// @returns {boolean}
/// @see {@link http://paulbourke.net/geometry/pointlineplane/}
function segment_inside_circle(sx1, sy1, sx2, sy2, cx, cy, rad)
{
	return (
		point_in_circle(sx1, sy1, cx, cy, rad) and
		point_in_circle(sx2, sy2, cx, cy, rad)
	);
}

/// @description Checks if the given line segment crosses the given ellipse
/// @argument {real} sx1 first line first point x-position
/// @argument {real} sy1 first line first point y-position
/// @argument {real} sx2 first line second point x-position
/// @argument {real} sy2 first line second point y-position
/// @argument {real} cx ellipse centre point x-position
/// @argument {real} cy ellipse centre point y-position
/// @argument {real} xrad ellipse x-radius
/// @argument {real} yrad ellipse y-radius
/// @returns {boolean}
/// @see {@link http://math.stackexchange.com/a/243525}
function segment_in_ellipse(sx1, sy1, sx2, sy2, cx, cy, xrad, yrad)
{
	var rx = sx1 - cx;
	var ry = sy1 - cy;
	var sx = sx2 - cx;
	var sy = sy2 - cy;
	var wide = (xrad > yrad);
	var scale = wide ? (xrad / yrad) : (yrad / xrad);
	return wide ?
		segment_in_circle(rx, ry * scale, sx, sy * scale, 0, 0, xrad) : 
		segment_in_circle(rx * scale, ry, sx * scale, sy, 0, 0, yrad);
}


/// @description Checks if the given line segment lies within the given ellipse
/// @argument {real} sx1 first line first point x-position
/// @argument {real} sy1 first line first point y-position
/// @argument {real} sx2 first line second point x-position
/// @argument {real} sy2 first line second point y-position
/// @argument {real} cx ellipse centre point x-position
/// @argument {real} cy ellipse centre point y-position
/// @argument {real} xrad ellipse x-radius
/// @argument {real} yrad ellipse y-radius
/// @returns {boolean}
/// @see {@link http://math.stackexchange.com/a/243525}
function segment_inside_ellipse(sx1, sy1, sx2, sy2, cx, cy, xrad, yrad)
{
	var rx = sx1 - cx;
	var ry = sy1 - cy;
	var sx = sx2 - cx;
	var sy = sy2 - cy;
	var wide = (xrad > yrad);
	var scale = wide ? (xrad / yrad) : (yrad / xrad);
	return wide ?
		segment_inside_circle(rx, ry * scale, sx, sy * scale, 0, 0, xrad) : 
		segment_inside_circle(rx * scale, ry, sx * scale, sy, 0, 0, yrad);
}

/// @description Checks if the given line segment crosses the given quarter ellipse
/// @argument {real} sx1 first line first point x-position
/// @argument {real} sy1 first line first point y-position
/// @argument {real} sx2 first line second point x-position
/// @argument {real} sy2 first line second point y-position
/// @argument {real} cx ellipse centre point x-position
/// @argument {real} cy ellipse centre point y-position
/// @argument {real} xrad ellipse x-radius
/// @argument {real} yrad ellipse y-radius
/// @returns {boolean}
function segment_in_quarter_ellipse(sx1, sy1, sx2, sy2, cx, cy, xrad, yrad)
{
	var dx1 = (sign(xrad) == -1) ? cx + xrad : cx;
	var dy1 = (sign(yrad) == -1) ? cy + yrad : cy;
	var dx2 = (sign(xrad) == -1) ? cx : cx + xrad;
	var dy2 = (sign(yrad) == -1) ? cy : cy + yrad;
	return (
		segment_in_rectangle(sx1, sy1, sx2, sy2, dx1, dy1, dx2, dy2) > 0 and 
		segment_in_ellipse(sx1, sy1, sx2, sy2, cx, cy, abs(xrad), abs(yrad)) > 0
	);
}

/// @description Checks if the given line segment crosses the given ellipse pipe
/// @argument {real} sx1 first line first point x-position
/// @argument {real} sy1 first line first point y-position
/// @argument {real} sx2 first line second point x-position
/// @argument {real} sy2 first line second point y-position
/// @argument {real} cx pipe centre point x-position
/// @argument {real} cy pipe centre point y-position
/// @argument {real} xrad pipe x-radius
/// @argument {real} yrad pipe y-radius
/// @returns {boolean}
function segment_in_quarter_pipe(sx1, sy1, sx2, sy2, cx, cy, xrad, yrad)
{
	return (
		segment_in_rectangle(
			sx1, sy1, sx2, sy2, cx, cy, cx + xrad, cy + yrad) and 
		not segment_inside_ellipse(
			sx1, sy1, sx2, sy2, cx, cy, abs(xrad), abs(yrad)) and 
		(
			not segment_in_ellipse(
				sx1, sy1, sx2, sy2, cx, cy, abs(xrad), abs(yrad)) or 
			segment_inside_rectangle(
				sx1, sy1, sx2, sy2, cx, cy, cx + xrad, cy + yrad) or
			segment_in_segment(
				cx + xrad, cy, cx + xrad, cy + yrad, sx1, sy1, sx2, sy2) or 
			segment_in_segment(
				cx, cy + yrad, cx + xrad, cy + yrad, sx1, sy1, sx2, sy2) or 
			point_in_quarter_pipe(sx1, sy1, cx, cy, xrad, yrad) or 
			point_in_quarter_pipe(sx2, sy2, cx, cy, xrad, yrad)
		)
	);
}