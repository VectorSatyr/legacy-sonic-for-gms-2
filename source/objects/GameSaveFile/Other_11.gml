/// @description Update
if (includes(index, 0, MAX_GAME_SAVES - 1)) {
	location = room;
	var player0 = game_player_find(0);
	if (instance_exists(player0)) {
		player_character = player0.character_id;
		player_lives = max(player0.life_count, STARTING_LIFE_COUNT);
	}
	var player1 = game_player_find(1);
	if (instance_exists(player1)) {
		assist_character = player1.character_id;
	}
}