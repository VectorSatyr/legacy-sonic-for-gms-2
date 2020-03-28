/// @description  Enter
with (GamePlayer) {
    game_player_spawn_character(self, other.x, other.y);
}

var player1 = game_player_find(0);
if (instance_exists(player1)) {
    with (ComputerPlayer) {
        target = player1.character;
    }
}

with (instance_position(x, y, LampPost)) {
    event_user(2); // activate nearby lamp posts
}