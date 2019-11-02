/// @description  Attach
if (view_exists(vind)) {
    game_camera_direct(vind, game_pc_camera_state_normal, self);
    view_centre(vind, x, y);
    bound_left = owner.bound_left;
    bound_top = owner.bound_top;
    bound_right = owner.bound_right;
    bound_bottom = owner.bound_bottom;
    __view_set( e__VW.XView, vind, clamp(__view_get( e__VW.XView, vind ), bound_left, bound_right - __view_get( e__VW.WView, vind )) );
    __view_set( e__VW.YView, vind, clamp(__view_get( e__VW.YView, vind ), bound_top, bound_bottom - __view_get( e__VW.HView, vind )) );
    __view_set( e__VW.HBorder, vind, (__view_get( e__VW.WView, vind ) * 0.5) - x_border );
    __view_set( e__VW.VBorder, vind, (__view_get( e__VW.HView, vind ) * 0.5) - y_border );
    __view_set( e__VW.HSpeed, vind, x_speed );
    __view_set( e__VW.VSpeed, vind, y_speed );
}

