/// @description  Draw
if (locked) { // lock to screen
    draw_sprite_ext(DrownPopupSprite, count - 1, __view_get( e__VW.XView, vind ) + view_offset_x, __view_get( e__VW.YView, vind ) + view_offset_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
} else {
    draw_self();
}

