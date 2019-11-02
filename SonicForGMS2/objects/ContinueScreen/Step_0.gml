/// @description  Countdown
if (game_is_running()) {
    switch (state) {
    case "countdown":
        countdown--;
        countdown_string = string_format_zero(countdown div room_speed, 2, 0);
        if (game_input_event_pressed("start")) {
            state = "proceed";
            game_audio_play_sound(SpinRevSound);
            with (ContinueScreenCharacter) {
                event_user(0);
            }
            break;
        }
        if (countdown <= 0) {
            state = "";
            game_screen_fade_out(BlackFadeShd, 22, SplashScreenRoom);
        }
        break;
    
    case "proceed":
        continues_flash++;
        if (not instance_exists(ContinueScreenCharacter)) {
            game_save_start(game_save_current());
        }
        break;
    }
}

