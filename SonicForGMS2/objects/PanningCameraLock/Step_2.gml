/// @description  Scroll
var diff;
if (game_is_running()) {
    with (PlayableCharacter) {
        if (sign(other.image_xscale) == sign(x_int - other.x)) {
            other.enabled = true;
        }
        if (other.enabled) {
            bound_left = max(bound_left, min(other.left, __view_get( e__VW.XView, owner.index )));
            if (bound_left < other.left) {
                bound_left = min(bound_left + other.scroll_hspeed, other.left);
            }
            bound_top = max(bound_top, min(other.top, __view_get( e__VW.YView, owner.index )));
            if (bound_top < other.top) {
                bound_top = min(bound_top + other.scroll_vspeed, other.top);
            }
            bound_right = min(bound_right, max(other.right, __view_get( e__VW.XView, owner.index ) + __view_get( e__VW.WView, owner.index )));
            if (bound_right > other.right) {
                bound_right = max(bound_right - other.scroll_hspeed, other.right);
            }
            bound_bottom = min(bound_bottom, max(other.bottom, __view_get( e__VW.YView, owner.index ) + __view_get( e__VW.HView, owner.index )));
            if (bound_bottom > other.bottom) {
                bound_bottom = max(bound_bottom - other.scroll_vspeed, other.bottom);
            }
            with (camera) {
                bound_left = other.bound_left;
                bound_top = other.bound_top;
                bound_right = other.bound_right;
                bound_bottom = other.bound_bottom;
            }
        }
    }
}

