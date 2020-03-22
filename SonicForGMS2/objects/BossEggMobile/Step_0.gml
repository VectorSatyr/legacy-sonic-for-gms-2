/// @description  Hover
event_inherited();
if (game_is_running()) {
    x += x_speed;
    y = base_y + dsin(hover_angle) * hover_height;
    base_y += y_speed;
    hover_angle += hover_step;
    if (x_speed != 0) {
        facing_sign = sign(x_speed);
    }
}