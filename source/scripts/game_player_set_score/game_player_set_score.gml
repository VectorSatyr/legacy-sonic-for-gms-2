function game_player_set_score(argument0, argument1) {
	var player = argument0;
	var amount = argument1;

	with (player) {
	    var count = score_count;
	    score_count = clamp(amount, 0, MAX_SCORE_COUNT);
	    if (score_count != count) {
	        with (display) {
				if (instance_exists(post_score)) {
					post_score.label = string(other.score_count);
				}
	        }
	    }
	}



}
