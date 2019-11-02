/// @description  Attach
if (game_is_running()) {
    if (instance_exists(source)) {
        x = source.x_int;
        y = source.y_int;
    }
    else {
        instance_destroy();
    }
}

