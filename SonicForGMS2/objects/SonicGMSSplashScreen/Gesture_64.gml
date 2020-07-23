/// @description Skip (Mobile)
switch (os_type)
{
case os_android:
case os_ios:
	if (game_is_running() and display_time > 0)
	{
		display_time = 0;
		game_screen_fade_out(BlackFadeShd, 22, TitleScreenRoom);
	}
}