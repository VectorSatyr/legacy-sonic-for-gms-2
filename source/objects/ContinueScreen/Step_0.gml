/// @description  Countdown
if (game_is_running())
{
	switch (state)
	{
	case "countdown":
		--countdown;
		countdown_text = string_format_zero(countdown div room_speed, 2, 0);
		if (game_input_event_pressed("start"))
		{
			event_user(0); // proceed
		}
		else if (countdown <= 0)
		{
			state = "";
			game_screen_fade_out(BlackFadeShd, 22, SplashScreenRoom);
		}
		break;
	
	case "proceed":
		if (not instance_exists(ContinueScreenCharacter))
		{
			game_save_start(game_save_current());
		}
		break;
	}
}