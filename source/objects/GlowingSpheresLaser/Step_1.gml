/// @description Activate
if (game_is_running())
{
	if (timer > 0)
	{
		--timer;
		if (timer <= 0)
		{
			y_speed = -1;
		}
	}
}