/// @description  Draw
if (locked) { // lock to screen
	var cam = view_get_camera(vind);
    draw_sprite_ext(DrownPopupSprite, count - 1, camera_get_view_x(cam) + view_offset_x, camera_get_view_y(cam) + view_offset_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
} else {
    draw_self();
}

