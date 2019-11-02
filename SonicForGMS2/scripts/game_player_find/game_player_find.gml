/// @description  game_player_find(index)
/// @param index

var index = argument0;

var player = noone;

with (GamePlayer) {
    if (self.index == index) {
        player = id;
        break;
    }
}

return player;
