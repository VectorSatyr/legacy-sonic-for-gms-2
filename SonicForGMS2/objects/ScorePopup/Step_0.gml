/// @description Rise
if (game_is_running())
{
    y = ystart - dcos(life * y_speed) * y_offset;

    if (life > 0)
	{
        --life
        if (life <= 0)
		{
            instance_destroy();
        }
    }
}