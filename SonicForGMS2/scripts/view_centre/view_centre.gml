/// @description  view_centre(vind, ox, oy)
/// @param vind
/// @param  ox
/// @param  oy
/**
 * @description Centers the given view at the given point, taking the room boundaries into consideration
 * @argument {real} vind view port
 * @argument {real} ox focal point x-position
 * @argument {real} oy focal point y-position
 */

var vind = argument0;
var ox = argument1;
var oy = argument2;

if (view_exists(vind)) {
    __view_set( e__VW.XView, vind, clamp(ox - (__view_get( e__VW.WView, vind ) * 0.5), 0, room_width - __view_get( e__VW.WView, vind )) );
    __view_set( e__VW.YView, vind, clamp(oy - (__view_get( e__VW.HView, vind ) * 0.5), 0, room_height - __view_get( e__VW.HView, vind )) );
}
