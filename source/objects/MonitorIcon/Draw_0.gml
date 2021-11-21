/// @description Flicker
var frame = game_clock_get_step();
var distort = (flicker and (frame mod 4) == 3);
draw_sprite_ext(
	(distort) ? MonitorStaticSprite : sprite_index,
	(distort) ? (frame div 4) mod 2 : 0, 
	x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha
);