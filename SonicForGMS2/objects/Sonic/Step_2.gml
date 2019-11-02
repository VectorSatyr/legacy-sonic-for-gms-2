action_inherited();
/// Update animation
if (game_is_running() and not state_changed) {
    switch (state) {
    case player_is_standing:
        if (superform and cliff_sign != 0 and cliff_sign == -facing_sign) {
            facing_sign = cliff_sign;
        }
        break;

    case player_is_running:
        image_angle = direction;
        var velocity = floor(abs(x_speed));
        if (velocity >= 6) {
            game_pc_animate(self, "run");
        } else {
            game_pc_animate(self, "walk");
        }
        timeline_speed = 1 / max(8 - velocity, 1);
        break;
    }
    if (superform and game_pc_animating(self, "walk")) {
        if (game_clock_get_step() mod 4 == 0) {
            sprite_index = SuperSonicWalkHighSprite;
        } else {
            sprite_index = SuperSonicWalkLowSprite;
        }
    }
}

