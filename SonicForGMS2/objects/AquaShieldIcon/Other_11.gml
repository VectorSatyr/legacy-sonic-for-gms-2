/// @description  Gain shield
with (player) {
    if (state != player_is_defeated and state != player_is_drowning) {
        game_pc_gain_shield(self, AquaShield);
        game_pc_play_sound(self, AquaShieldSound);
    }
}

