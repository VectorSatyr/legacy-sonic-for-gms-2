/// @description Update
--timer;
if (timer <= 0)
{
	with (TouchUISign)
	{
		enabled = true;
	}
	game_screen_fade_in(BlackFadeShd, 22);
    instance_destroy();
}