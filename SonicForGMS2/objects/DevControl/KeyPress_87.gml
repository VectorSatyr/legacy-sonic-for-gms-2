/// @description  Reverse gravity
with (game_player_find(0)) {
    var angle = angle_wrap(character.gravity_direction + 180);
    game_pc_redirect_gravity(character, angle);
    game_pc_translate_speed(character, 0, 0);
    /*
    with (character) {
        var angle = angle_wrap(gravity_direction + 180);
        if (gravity_direction != angle) {
            gravity_direction = angle;
            game_pc_redirect(self, gravity_direction);
            player_set_mask_direction(gravity_direction);
            x_speed = 0;
            y_speed = 0;
        }
    }
    */
}

/* */
/*  */
