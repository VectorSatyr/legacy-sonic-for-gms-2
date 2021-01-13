/// @description Skip
if (game_is_running() and duration > 0)
{
	duration = 0;
	game_screen_fade_out(BlackFadeShd, 22, TitleScreenRoom);
}