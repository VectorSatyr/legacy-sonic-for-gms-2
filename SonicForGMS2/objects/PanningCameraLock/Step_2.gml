/// @description  Scroll
if (game_is_running()) {
    with (PlayableCharacter) {
        if (sign(other.image_xscale) == sign(x_int - other.x)) {
            other.enabled = true;
        }
        if (other.enabled) {
			var cam = view_get_camera(owner.index);
            bound_left = max(bound_left, min(other.left, camera_get_view_x(cam)));
            if (bound_left < other.left) {
                bound_left = min(bound_left + other.scroll_hspeed, other.left);
            }
            bound_top = max(bound_top, min(other.top, camera_get_view_y(cam)));
            if (bound_top < other.top) {
                bound_top = min(bound_top + other.scroll_vspeed, other.top);
            }
            bound_right = min(bound_right, max(other.right, camera_get_view_x(cam) + camera_get_view_width(cam)));
            if (bound_right > other.right) {
                bound_right = max(bound_right - other.scroll_hspeed, other.right);
            }
            bound_bottom = min(bound_bottom, max(other.bottom, camera_get_view_y(cam) + camera_get_view_height(cam)));
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

