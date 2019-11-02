/// @description  view_follow(vind, ox, oy)
/// @param vind
/// @param  ox
/// @param  oy
/**
 * @description Moves the specified view as if view_object[vind] were set to an instance at point {ox, oy}
 * @argument {real} vind view port
 * @argument {real} ox focal point x-position
 * @argument {real} oy focal point y-position
 */

var vind = argument0;
var ox = argument1;
var oy = argument2;

if (view_exists(vind)) {
    // calculate centre point
    var cx = __view_get( e__VW.XView, vind ) + (__view_get( e__VW.WView, vind ) * 0.5);
    var cy = __view_get( e__VW.YView, vind ) + (__view_get( e__VW.HView, vind ) * 0.5);
    
    // calculate offset from centre point
    var ocx = ox - cx;
    var ocy = oy - cy;
    
    // limit to view border
    var hborder = (__view_get( e__VW.WView, vind ) * 0.5) - __view_get( e__VW.HBorder, vind );
    var vborder = (__view_get( e__VW.HView, vind ) * 0.5) - __view_get( e__VW.VBorder, vind );
    ocx = max(abs(ocx) - hborder, 0) * sign(ocx);
    ocy = max(abs(ocy) - vborder, 0) * sign(ocy);
    
    // limit movement speed
    if (__view_get( e__VW.HSpeed, vind ) > -1 and abs(ocx) > __view_get( e__VW.HSpeed, vind )) {
        ocx = __view_get( e__VW.HSpeed, vind ) * sign(ocx);
    }
    if (__view_get( e__VW.VSpeed, vind ) > -1 and abs(ocy) > __view_get( e__VW.VSpeed, vind )) {
        ocy = __view_get( e__VW.VSpeed, vind ) * sign(ocy);
    }
    
    // move the view
    if (ocx != 0) {
        __view_set( e__VW.XView, vind, clamp(__view_get( e__VW.XView, vind ) + ocx, 0, room_width - __view_get( e__VW.WView, vind )) );
    }
    if (ocy != 0) {
        __view_set( e__VW.YView, vind, clamp(__view_get( e__VW.YView, vind ) + ocy, 0, room_height - __view_get( e__VW.HView, vind )) );
    }
}
