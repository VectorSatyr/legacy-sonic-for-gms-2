/// @description Animate
if (game_is_running())
{
	var step = game_clock_get_step();
	index = (step mod flicker_rate == 0) ? 1 + ((step div flicker_rate) mod total_colors) : 0;
}