event_inherited();
/// Hover
if (game_is_running()) {
    x += x_speed;
    base_y += y_speed;

    hover_angle += hover_step;
    y = base_y + dsin(hover_angle) * hover_height;

    if (x_speed != 0) {
        facing_sign = sign(x_speed);
    }

    with (eggman) {
        x = other.x;
        y = other.y;
        facing_sign = other.facing_sign;
    }
}

