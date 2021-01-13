/// @description Updates the starting lives count on the current save 'slot'
/// @argument {real} player player index to copy lives from
/// @argument {real} index (Optional) save 'slot' to update
function game_save_update_lives() {
	var index = -1;
	switch (argument_count) {
	case 2: index = argument[1];
	default:
	    var player = argument[0];
	}

	var file = game_save_find(index);
	with (file) {
	    player_lives = max(player.life_count, STARTING_LIFE_COUNT);
	}



}
