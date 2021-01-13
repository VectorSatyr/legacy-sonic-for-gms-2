/// @description  Bounce
if (game_is_running()) {
    if (y_speed > 0 and not place_meeting(xprevious, yprevious, other.object_index)) {
        y_speed = jump_force;
        if (x_speed == 0) {
            image_xscale = choose(1, -1);
            x_speed = -image_xscale * top_speed;
            event_user(0);
        }
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

