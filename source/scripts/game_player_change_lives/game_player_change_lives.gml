function game_player_change_lives(argument0, argument1) {
	var player = argument0;
	var amount = argument1;

	with (player) {
	    var count = life_count;
	    game_player_set_lives(id, life_count + amount);
	    if (life_count != count) {
	        if (sign(amount) > 0) {
	            game_audio_enqueue_jingle(LifeUpMusic);
	        }
	    }
	}



}
