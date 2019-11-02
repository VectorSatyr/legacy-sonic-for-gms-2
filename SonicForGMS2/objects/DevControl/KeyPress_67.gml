/// @description  Toggle debug flight (for player 1)
/// @param for player 1
with (game_player_find(0)) {
    with (character) {
        if (state == player_is_debug) {
            game_pc_perform(self, player_is_falling);
        } else {
            game_pc_perform(self, player_is_debug);
        }
    }
}

