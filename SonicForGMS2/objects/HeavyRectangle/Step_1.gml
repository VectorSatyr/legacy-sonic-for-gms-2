/// @description  Move
if (game_is_running()) {
    var sine = dsin(gravity_direction);
    var cosine = dcos(gravity_direction);
    if (y_speed != 0) {
        x += cosine * y_speed;
        y -= sine * y_speed;
    }
    if (not place_meeting(x + cosine, y - sine, Solid)) {
        y_speed += gravity_force;
    }
}

