/// @description  Render
if (sprite_index > -1) {
    var view = vind;
    if (not view_exists(view)) {
        view = view_current;
    }
    if (view_current == view) {
		var cam = view_get_camera(view);
        draw_sprite_ext(sprite_index, image_index, camera_get_view_x(cam) + x, camera_get_view_y(cam) + y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    }
}

