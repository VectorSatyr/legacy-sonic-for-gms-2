function game_player_find(argument0) {
	var index = argument0;

	var player = noone;

	with (GamePlayer) {
	    if (self.index == index) {
	        player = id;
	        break;
	    }
	}

	return player;



}
