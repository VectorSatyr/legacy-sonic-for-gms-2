/// @description  Update animation
event_inherited();
if (game_is_running() and not state_changed) {
    switch (state) {
    case player_is_standing:
        if (cliff_sign != 0 and cliff_sign == -facing_sign) {
            facing_sign = cliff_sign;
        }
        break;

    case player_is_running:
        image_angle = direction;
        var velocity = floor(abs(x_speed));
        if (velocity >= 6) {
            game_pc_animate(id, "run");
        } else {
            game_pc_animate(id, "walk");
        }
        timeline_speed = 1 / max(8 - velocity, 1);
        break;
    }
}

