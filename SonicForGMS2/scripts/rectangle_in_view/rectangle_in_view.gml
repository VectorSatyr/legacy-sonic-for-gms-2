/// @description  rectangle_in_view(x1, y1, x2, y2, vind)
/// @param x1
/// @param  y1
/// @param  x2
/// @param  y2
/// @param  vind
/**
 * @description Checks if the given rectangle crosses the given view port
 * @argument {real} x1 rectangle top-left point x-position
 * @argument {real} y1 rectangle top-left point y-position
 * @argument {real} x2 rectangle bottom-right point x-position
 * @argument {real} y2 rectangle bottom-right point y-position
 * @argument {real} vind view port
 * @returns {real} INTERSECT_NONE, INTERSECT_INSIDE or INTERSECT_OVERLAP
 */

var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var vind = argument4;

var result = INTERSECT_NONE;

if (view_exists(vind)) {
    var vx1 = __view_get( e__VW.XView, vind );
    var vy1 = __view_get( e__VW.YView, vind );
    var vx2 = vx1 + __view_get( e__VW.WView, vind );
    var vy2 = vy1 + __view_get( e__VW.HView, vind );
    result = rectangle_in_rectangle(x1, y1, x2, y2, vx1, vy1, vx2, vy2);
}

return result;
