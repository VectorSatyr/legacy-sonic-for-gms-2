function game_player_change_score(argument0, argument1) {
	var player = argument0;
	var amount = argument1;

	with (player) {
	    var count = score_count;
	    game_player_set_score(id, score_count + amount);
	    if (score_count != count) {
	        if (sign(amount) > 0 and SCORE_PER_LIFE > 0) {
	            var change = (score_count mod SCORE_PER_LIFE) + amount;
	            if (change >= SCORE_PER_LIFE) {
	                game_player_change_lives(id, change div SCORE_PER_LIFE);
	            }
	        }
	    }
	}



}
