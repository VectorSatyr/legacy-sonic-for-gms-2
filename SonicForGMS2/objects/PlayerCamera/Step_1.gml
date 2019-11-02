/// @description  Count
if (game_is_running()) {
    if (freeze_time > 0) {
        --freeze_time;
    }
    if (look_time > 0) {
        --look_time;
    }
}

