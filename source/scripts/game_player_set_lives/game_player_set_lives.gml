function game_player_set_lives(argument0, argument1) {
	var player = argument0;
	var amount = argument1;

	with (player) {
	    var count = life_count;
	    life_count = clamp(amount, 0, MAX_LIFE_COUNT);
	    if (life_count != count) {
	        with (display) {
				if (instance_exists(post_lives)) {
					post_lives.label = string(other.life_count);
				}
	        }
	    }
	}




}
