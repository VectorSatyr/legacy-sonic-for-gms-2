/// @description Display
if (game_is_running())
{
    switch (state)
	{
    case "appearing":
        --delay;
        if (delay <= 0)
		{
            state = "waiting";
        }
        break;
    
    case "waiting":
        start_sin = (start_sin + start_blink_speed) mod 360;
		postStartInput.image_alpha = image_alpha * abs(dsin(start_sin));
        if (game_input_event_pressed("start"))
		{
            game_screen_fade_out(BlackFadeShd, 22, FileSelectRoom);
            game_audio_fade_out_music(22);
			state = "";
        }
        break;
    }
}