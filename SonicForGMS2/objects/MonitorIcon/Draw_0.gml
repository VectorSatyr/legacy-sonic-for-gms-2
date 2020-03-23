/// @description  Flicker
var frame = game_clock_get_step();
if (static and (frame mod 4) == 3) {
	draw_sprite_ext(MonitorStaticSprite, (frame div 4) mod 2, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
} else {
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}