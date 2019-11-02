/// @description  game_pc_camera_state_common(vind)
/// @param vind

var vind = argument0;

var sine = dsin(gravity_direction);
var cosine = dcos(gravity_direction);
var ox = x + (look_x_distance * cosine) + (look_y_distance * sine);
var oy = y - (look_x_distance * sine) + (look_y_distance * cosine);

view_follow(vind, ox, oy);

__view_set( e__VW.XView, vind, clamp(__view_get( e__VW.XView, vind ), bound_left, bound_right - __view_get( e__VW.WView, vind )) );
__view_set( e__VW.YView, vind, clamp(__view_get( e__VW.YView, vind ), bound_top, bound_bottom - __view_get( e__VW.HView, vind )) );
