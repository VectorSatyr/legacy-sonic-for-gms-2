/// @description  Rise in water
if (game_is_running()) {
    if (position_meeting(x, y, Water)) {
        angle = (angle + angle_speed) mod 360;
        x = xstart + dsin(angle) * x_speed;
        y += y_speed;
    } else {
        instance_destroy();
    }
}