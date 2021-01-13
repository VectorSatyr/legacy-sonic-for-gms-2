/// @description Ripple
if (game_is_running())
{
    for (var n = 0; n < scanlines - 1; ++n)
	{
        scan[n].x = cos(game_clock_get_step() / 13.2 + n * 0.87) * ripple_magnitude;
    }
}