/// @description  Render
for (var oy = 0; oy < __view_get( e__VW.WView, view_current ); oy += height) {
    draw_sprite_ext(back, 0, __view_get( e__VW.XView, view_current ) + x, __view_get( e__VW.YView, view_current ) + y + oy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

