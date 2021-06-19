/// @description Checks if the given rectangle overlaps the given triangle (handles more edge cases than rectangle_in_triangle)
/// @argument {real} sx1 rectangle top-left point x-position
/// @argument {real} sy1 rectangle top-left point y-position
/// @argument {real} sx2 rectangle bottom-right point x-position
/// @argument {real} sy2 rectangle bottom-right point y-position
/// @argument {real} x1 triangle first point x-position
/// @argument {real} y1 triangle first point y-position
/// @argument {real} x2 triangle second point x-position
/// @argument {real} y2 triangle second point y-position
/// @argument {real} x3 triangle third point x-position
/// @argument {real} y3 triangle third point y-position
/// @returns {boolean}
/// @see {@link http://math.stackexchange.com/a/243525}
function rectangle_in_triangle_full(sx1, sy1, sx2, sy2, x1, y1, x2, y2, x3, y3)
{
	return (
		rectangle_in_triangle(sx1, sy1, sx2, sy2, x1, y1, x2, y2, x3, y3) or 
		point_in_rectangle(x1, y1, sx1, sy1, sx2, sy2) or 
		point_in_rectangle(x2, y2, sx1, sy1, sx2, sy2) or 
		point_in_rectangle(x3, y3, sx1, sy1, sx2, sy2) or 
		segment_in_rectangle(x1, y1, x2, y2, sx1, sy1, sx2, sy2) or
		segment_in_rectangle(x2, y2, x3, y3, sx1, sy1, sx2, sy2) or
		segment_in_rectangle(x1, y1, x3, y3, sx1, sy1, sx2, sy2)
	);
}

/// @description Checks if the given rectangle overlaps the given circle (handles more edge cases than rectangle_in_circle)
/// @argument {real} sx1 rectangle top-left point x-position
/// @argument {real} sy1 rectangle top-left point y-position
/// @argument {real} sx2 rectangle bottom-right point x-position
/// @argument {real} sy2 rectangle bottom-right point y-position
/// @argument {real} cx circle centre point x-position
/// @argument {real} cy circle centre point y-position
/// @argument {real} rad circle radius
/// @returns {boolean}
/// @see {@link http://math.stackexchange.com/a/243525}
function rectangle_in_circle_full(sx1, sy1, sx2, sy2, cx, cy, rad)
{
	return (
		rectangle_in_circle(sx1, sy1, sx2, sy2, cx, cy, rad) or 
		point_in_rectangle(cx, cy, sx1, sy1, sx2, sy2) or 
		segment_in_circle(sx1, sy1, sx2, sy1, cx, cy, rad) or
		segment_in_circle(sx1, sy1, sx1, sy2, cx, cy, rad) or
		segment_in_circle(sx2, sy1, sx2, sy2, cx, cy, rad) or
		segment_in_circle(sx1, sy2, sx2, sy2, cx, cy, rad)
	);
}

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
function rectangle_in_ellipse(sx1, sy1, sx2, sy2, cx, cy, xrad, yrad)
{
	var rx = sx1 - cx;
	var ry = sy1 - cy;
	var sx = sx2 - cx;
	var sy = sy2 - cy;
	var wide = (xrad > yrad);
	var scale = wide ? (xrad / yrad) : (yrad / xrad);
	return (
		(
			wide ?
			rectangle_in_circle_full(
				rx, ry * scale, sx, sy * scale, 0, 0, xrad) : 
			rectangle_in_circle_full(
				rx * scale, ry, sx * scale, sy, 0, 0, yrad)
		) or 
		point_in_rectangle(cx, cy, sx1, sy1, sx2, sy2) or 
		segment_in_ellipse(sx1, sy1, sx2, sy1, cx, cy, xrad, yrad) or 
		segment_in_ellipse(sx1, sy1, sx1, sy2, cx, cy, xrad, yrad) or 
		segment_in_ellipse(sx2, sy1, sx2, sy2, cx, cy, xrad, yrad) or 
		segment_in_ellipse(sx1, sy2, sx2, sy2, cx, cy, xrad, yrad)
	);
}

/// @description Checks if the given rectangle lies within the given ellipse
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
function rectangle_inside_ellipse(sx1, sy1, sx2, sy2, cx, cy, xrad, yrad)
{
	var rx = sx1 - cx;
	var ry = sy1 - cy;
	var sx = sx2 - cx;
	var sy = sy2 - cy;
	var wide = (xrad > yrad);
	var scale = wide ? (xrad / yrad) : (yrad / xrad);
	return wide ?
		rectangle_in_circle(
			rx, ry * scale, sx, sy * scale, 0, 0, xrad) == 1 : 
		rectangle_in_circle(
			rx * scale, ry, sx * scale, sy, 0, 0, yrad) == 1;
}

/// @description Checks if the given rectangle overlaps the given quarter ellipse
/// @argument {real} sx1 rectangle top-left point x-position
/// @argument {real} sy1 rectangle top-left point y-position
/// @argument {real} sx2 rectangle bottom-right point x-position
/// @argument {real} sy2 rectangle bottom-right point y-position
/// @argument {real} cx ellipse centre point x-position
/// @argument {real} cy ellipse centre point y-position
/// @argument {real} xrad ellipse x-radius
/// @argument {real} yrad ellipse y-radius
/// @returns {boolean}
function rectangle_in_quarter_ellipse(sx1, sy1, sx2, sy2, cx, cy, xrad, yrad)
{
	var dx1 = (sign(xrad) == -1) ? cx + xrad : cx;
	var dy1 = (sign(yrad) == -1) ? cy + yrad : cy;
	var dx2 = (sign(xrad) == -1) ? cx : cx + xrad;
	var dy2 = (sign(yrad) == -1) ? cy : cy + yrad;
	return (
		rectangle_in_rectangle(
			sx1, sy1, sx2, sy2, dx1, dy1, dx2, dy2) > 0 and
		rectangle_in_ellipse(
			sx1, sy1, sx2, sy2, cx, cy, abs(xrad), abs(yrad)) > 0
	);
}

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
function rectangle_in_quarter_pipe(sx1, sy1, sx2, sy2, cx, cy, xrad, yrad)
{
	var rect = rectangle_in_rectangle(
		sx1, sy1, sx2, sy2, cx, cy, cx + xrad, cy + yrad);
	return (
		rect and not rectangle_inside_ellipse(
			sx1, sy1, sx2, sy2, cx, cy, abs(xrad), abs(yrad)) and
		(
			not rectangle_in_ellipse(
				sx1, sy1, sx2, sy2, cx, cy, abs(xrad), abs(yrad)) or 
			rect == 1 or 
			rectangle_in_rectangle(
				cx, cy, cx + xrad, cy + yrad, sx1, sy1, sx2, sy2) == 1 or 
			segment_in_rectangle(
				cx + xrad, cy, cx + xrad, cy + yrad, sx1, sy1, sx2, sy2) or 
			segment_in_rectangle(
				cx, cy + yrad, cx + xrad, cy + yrad, sx1, sy1, sx2, sy2) or 
			point_in_quarter_pipe(sx1, sy1, cx, cy, xrad, yrad) or 
			point_in_quarter_pipe(sx1, sy2, cx, cy, xrad, yrad) or 
			point_in_quarter_pipe(sx2, sy1, cx, cy, xrad, yrad) or 
			point_in_quarter_pipe(sx2, sy2, cx, cy, xrad, yrad)
		)
	);
}

/// @description Checks if the given rectangle crosses the given camera
/// @argument {real} x1 rectangle top-left point x-position
/// @argument {real} y1 rectangle top-left point y-position
/// @argument {real} x2 rectangle bottom-right point x-position
/// @argument {real} y2 rectangle bottom-right point y-position
/// @argument {real} cam camera id
/// @returns {boolean}
function rectangle_in_camera(x1, y1, x2, y2, cam)
{
	var cx1 = camera_get_view_x(cam);
	var cy1 = camera_get_view_y(cam);
	var cx2 = cx1 + camera_get_view_width(cam);
	var cy2 = cy1 + camera_get_view_height(cam);
	return rectangle_in_rectangle(x1, y1, x2, y2, cx1, cy1, cx2, cy2);
}

/// @description Checks if the given rectangle crosses the given view port
/// @argument {real} x1 rectangle top-left point x-position
/// @argument {real} y1 rectangle top-left point y-position
/// @argument {real} x2 rectangle bottom-right point x-position
/// @argument {real} y2 rectangle bottom-right point y-position
/// @argument {real} vind view port
/// @returns {boolean}
function rectangle_in_view(x1, y1, x2, y2, vind)
{
	return view_exists(vind) ? 
		rectangle_in_camera(x1, y1, x2, y2, view_get_camera(vind)) : false;
}