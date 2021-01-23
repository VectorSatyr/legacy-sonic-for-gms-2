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