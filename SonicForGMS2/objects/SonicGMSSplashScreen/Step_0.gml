/// @description  Wait
if (game_is_running()) {
    if (display_time > 0) {
        --display_time;
        if (display_time <= 0) {
            game_screen_fade_out(BlackFadeShd, 22, TitleScreenRoom);
        }
    }
}

