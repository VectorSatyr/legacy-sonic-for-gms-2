/// @description  Gain rings
with (player) {
    if (state != player_is_defeated and state != player_is_drowning) {
        game_player_change_rings(owner, other.value);
    }
}