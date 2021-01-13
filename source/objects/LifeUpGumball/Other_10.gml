/// @description  Gain extra life
with (player) {
    if (state != player_is_defeated and state != player_is_drowning) {
        game_player_change_lives(owner, other.value);
    }
}