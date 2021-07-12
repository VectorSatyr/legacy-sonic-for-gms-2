/// @description Collects the given emerald and saves it to the currente save 'slot'
/// @argument {real} emeraldIndex id of emerald to collect (0..6)
/// @argument {real} index (Optional) save 'slot' to update
function game_save_collect_emerald() {
	var index = -1;
	switch (argument_count) {
	case 2: index = argument[1];
	default:
	    var emeraldIndex = argument[0];
	}

	var file = game_save_find(index);
	with (file) {
	    player_emeralds |= int64(1 << emeraldIndex);
	}



}
