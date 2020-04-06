/// @description  Animate
if (game_is_running()) {
	var step = game_clock_get_step();
	if (step mod 2 == 0) {
		index = 1 + ((step div 2) mod 8);
	} else {
		index = 0;
	}
}