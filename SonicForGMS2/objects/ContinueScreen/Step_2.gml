/// @description Animate
if (game_is_running())
{
	postCountdownText.label = countdown_text;
	if (total_icons > 0)
	{
		var frame = game_clock_get_step() div icon_anim_frames;
		for (var n = 0; n < total_icons; ++n)
		{
			postIcon[n].image_index = frame;
		}
		if (state == "proceed")
		{
			postIcon[0].visible = ((icon_flash div icon_blink_frames) mod 2 == 0);
			++icon_flash;
		}
	}
}