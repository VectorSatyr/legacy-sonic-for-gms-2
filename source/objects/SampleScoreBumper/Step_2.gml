/// @description Animate
var frame = game_clock_get_step();
image_index = (timer > 0 and (frame div 4) mod 2 == 0) ?
	3 : ((frame div 8) mod 3);