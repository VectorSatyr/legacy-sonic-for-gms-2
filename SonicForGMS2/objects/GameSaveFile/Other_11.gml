/// @description  Update
if (in_range(index, -1, MAX_GAME_SAVES)) {
    location = room;

    var player = game_player_find(0);
    if (instance_exists(player)) {
        player_character = player.character_id;
        player_lives = max(player.life_count, STARTING_LIFE_COUNT);
    }

    player = game_player_find(1);
    if (instance_exists(player)) {
        assist_character = player.character_id;
    }
}

