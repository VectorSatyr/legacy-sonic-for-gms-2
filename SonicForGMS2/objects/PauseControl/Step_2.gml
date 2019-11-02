/// @description  Check pause event
if (game_input_event_pressed("start")) {
    if (not instance_exists(GameSuspension)) {
        instance_create(0, 0, PausedScreen);
    } else if (instance_exists(PausedScreen)) {
        instance_destroy(PausedScreen);
    }
}

