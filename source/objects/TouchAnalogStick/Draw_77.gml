/// @description Render
surface_set_target(application_surface);
if (sprite_index > -1) {
	draw_self();
}
if (touch_right) {
	draw_sprite_ext(
		TouchStickFrameRightSprite, 0, x, y, image_xscale, image_yscale, 
		image_angle, image_blend, frame_alpha
	);
}
if (touch_up) {
	draw_sprite_ext(
		TouchStickFrameUpSprite, 0, x, y, image_xscale, image_yscale, 
		image_angle, image_blend, frame_alpha
	);
}
if (touch_left) {
	draw_sprite_ext(
		TouchStickFrameLeftSprite, 0, x, y, image_xscale, image_yscale, 
		image_angle, image_blend, frame_alpha
	);
}
if (touch_down) {
	draw_sprite_ext(
		TouchStickFrameDownSprite, 0, x, y, image_xscale, image_yscale, 
		image_angle, image_blend, frame_alpha
	);
}
surface_reset_target();