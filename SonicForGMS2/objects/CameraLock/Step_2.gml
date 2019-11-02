/// @description  Lock
if (game_is_running()) {
    with (PlayableCharacter) {
        if (sign(other.image_xscale) == sign(x_int - other.x)) {
            if (bound_left < other.left) {
                bound_left = min(__view_get( e__VW.XView, owner.index ), other.left);
                with (camera) {
                    bound_left = other.bound_left;
                }
            }
            if (bound_right > other.right) {
                bound_right = max(__view_get( e__VW.XView, owner.index ) + __view_get( e__VW.WView, owner.index ), other.right);
                with (camera) {
                    bound_right = other.bound_right;
                }
            }
            if (bound_top < other.top) {
                bound_top = min(__view_get( e__VW.YView, owner.index ), other.top);
                with (camera) {
                    bound_top = other.bound_top;
                }
            }
            if (bound_bottom > other.bottom) {
                bound_bottom = max(__view_get( e__VW.YView, owner.index ) + __view_get( e__VW.HView, owner.index ), other.bottom);
                with (camera) {
                    bound_bottom = other.bound_bottom;
                }
            }
        }
    }
}

