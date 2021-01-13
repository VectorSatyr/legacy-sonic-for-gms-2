/// @description  Gain
if (not instance_exists(PausedScreen)) {
    if (music_fade_out_time > 0) {
        --music_fade_out_time;
        if (music_gain > 0) {
            music_gain -= music_fade_rate;
            instance_perform_user_event(GameMusic, 2);
        }
    }
    if (music_fade_in_time > 0) {
        --music_fade_in_time;
        if (music_gain < 1) {
            music_gain += music_fade_rate;
            instance_perform_user_event(GameMusic, 2);
        }
    }
}

