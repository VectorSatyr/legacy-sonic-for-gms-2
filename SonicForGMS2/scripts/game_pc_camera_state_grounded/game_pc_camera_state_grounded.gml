/// @description  game_pc_camera_state_grounded(vind)
/// @param vind

var vind = argument0;

__view_set( e__VW.HSpeed, 0, x_speed * (freeze_time <= 0) );
__view_set( e__VW.VSpeed, vind, min(min_y_speed + abs(y - yprevious), y_speed) );
__view_set( e__VW.VBorder, vind, (__view_get( e__VW.HView, vind ) * 0.5) );

game_pc_camera_state_common(vind);
