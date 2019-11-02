/// @description  Display
if (game_is_running()) {
    switch (phase) {
    case 0: // wait
        --display_time;
        if (display_time <= 0) {
            phase = 1;
        }
        break;
    
    case 1: // press start
        press_start_sin += press_start_blink_speed;
        press_start_alpha = abs(dsin(press_start_sin));
        if (game_input_event_pressed("start")) {
            game_screen_fade_out(BlackFadeShd, 22, FileSelectRoom);
            game_audio_fade_out_music(22);
            phase = 2;
        }
        break;

    case 2: // do nothing
        break;
    }
}

