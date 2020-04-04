/// @description  Animate
if (game_is_running()) {
	var step = game_clock_get_step();
	if (step mod 2 == 0) {
		image_index = 1 + ((step div 2) mod 8);
	} else {
		image_index = 0;
	}
	input_color = input;
	for (var n = 0; n < total_colors; ++n) {
		output_color[n] = output[image_index, n];
	}
}