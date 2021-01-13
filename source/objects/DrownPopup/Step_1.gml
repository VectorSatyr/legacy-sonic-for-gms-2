/// @description Live
if (game_is_running())
{
	--timer;
    if (timer <= 0)
	{
        instance_destroy();
    }
}