/// @description  Render
if (sprite_index > -1) {
    var view = vind;
    if (not view_exists(view)) {
        view = view_current;
    }
    if (view_current == view) {
        draw_sprite_ext(sprite_index, image_index, __view_get( e__VW.XView, view ) + x, __view_get( e__VW.YView, view ) + y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    }
}

