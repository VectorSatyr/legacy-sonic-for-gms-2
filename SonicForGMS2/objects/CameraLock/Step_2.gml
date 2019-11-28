/// @description  Lock
if (game_is_running()) {
    with (PlayableCharacter) {
        if (sign(other.image_xscale) == sign(x_int - other.x)) {
			var cam = view_get_camera(owner.index);
            if (bound_left < other.left) {
                bound_left = min(camera_get_view_x(cam), other.left);
                with (camera) {
                    bound_left = other.bound_left;
                }
            }
            if (bound_right > other.right) {
                bound_right = max(camera_get_view_x(cam) + camera_get_view_width(cam), other.right);
                with (camera) {
                    bound_right = other.bound_right;
                }
            }
            if (bound_top < other.top) {
                bound_top = min(camera_get_view_y(cam), other.top);
                with (camera) {
                    bound_top = other.bound_top;
                }
            }
            if (bound_bottom > other.bottom) {
                bound_bottom = max(camera_get_view_y(cam) + camera_get_view_height(cam), other.bottom);
                with (camera) {
                    bound_bottom = other.bound_bottom;
                }
            }
        }
    }
}

