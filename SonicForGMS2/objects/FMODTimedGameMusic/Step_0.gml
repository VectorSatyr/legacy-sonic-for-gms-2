/// @description  Destroy (when finished)
if (game_is_running()) {
    if (time > 0) {
        --time;
        if (time <= 0) {
            instance_destroy();
        }
    }
}

