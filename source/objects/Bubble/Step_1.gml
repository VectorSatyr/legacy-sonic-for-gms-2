/// @description  Grow
if (game_is_running()) {
	if (size < maximum_size) {
		size += growth_rate;
	}
}