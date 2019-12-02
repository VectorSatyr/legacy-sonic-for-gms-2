/// @description  Animate
event_inherited();
if (game_is_running()) {
    if (y_speed > 0) {
        image_index = 0;
    } else {
        image_index = 1;
    }
}

