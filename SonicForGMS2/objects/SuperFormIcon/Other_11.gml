/// @description  Transform
with (player) {
    if (state != player_is_defeated and state != player_is_drowning) {
        if (owner.rings < 50) {
            game_player_set_rings(owner, 50);
        }
        game_pc_perform(self, player_is_transforming);
    }
}

