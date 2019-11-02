/// @description  Rise in water
if (game_is_running()) {
    if (not locked) {
        angle = (angle + angle_speed) mod 360;
        x = xstart + dsin(angle) * x_speed;
        y += y_speed;
    }
}

