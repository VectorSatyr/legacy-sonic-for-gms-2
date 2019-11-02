/// @description  Bounce
if (game_is_running()) {
    if (y_speed > 0 and not place_meeting(xprevious, yprevious, other.object_index)) {
        y_speed *= -0.75;
        var sine = dsin(gravity_direction);
        var cosine = dcos(gravity_direction);
        repeat (sprite_height) {
            if (place_meeting(x, y, other.object_index)) {
                x -= cosine;
                y += sine;
            } else {
                break;
            }
        }
    }
}

