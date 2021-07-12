/// @description  Fall out of screen
if (game_is_running()) {
    if (timed_delay == 0) {
        x += dcos(gravity_direction) * y_speed;
        y -= dsin(gravity_direction) * y_speed;
        y_speed += gravity_force;
    } else {
        --timed_delay;
        if (timed_delay == 0) {
            depth_mask = int64(0);
        }
    }
}

