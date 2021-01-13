/// @description  Fall out of screen
if (game_is_running()) {
    x += -dsin(gravity_direction) * x_speed + dcos(gravity_direction) * y_speed;
    y += -dcos(gravity_direction) * x_speed - dsin(gravity_direction) * y_speed;
    y_speed += gravity_force;
}

