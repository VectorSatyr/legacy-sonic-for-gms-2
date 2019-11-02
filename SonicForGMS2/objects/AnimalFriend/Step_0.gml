/// @description  Move
if (game_is_running()) {
    if (x_speed != 0) {
        x += (dsin(gravity_direction) * x_speed);
        y += (dcos(gravity_direction) * x_speed);
    }
    if (y_speed != 0) {
        x += (dcos(gravity_direction) * y_speed);
        y -= (dsin(gravity_direction) * y_speed);
    }
    if (abs(y_speed) < gravity_cap) {
        y_speed += gravity_speed;
        if (abs(y_speed) > gravity_cap) {
            y_speed = gravity_cap * sign(y_speed);
        }
    }
    if (time_to_move > 0) {
        --time_to_move;
        if (time_to_move == 0) {
            depth = -2;
            y_speed = starting_jump_force;
            gravity_speed = gravity_force;
        }
    }
}

