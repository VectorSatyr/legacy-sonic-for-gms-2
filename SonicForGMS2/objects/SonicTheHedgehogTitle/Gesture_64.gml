/// @description Proceed
if (game_is_running())
{
    switch (state)
	{
    case "waiting":
        game_screen_fade_out(BlackFadeShd, 22, FileSelectRoom);
        game_audio_fade_out_music(22);
		state = "";
        break;
    }
}