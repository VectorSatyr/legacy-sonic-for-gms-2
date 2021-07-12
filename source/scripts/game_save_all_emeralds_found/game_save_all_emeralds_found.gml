/// @description Checks if all emeralds have been collected on the current save 'slot'
/// @argument {real} index (Optional) save 'slot' to check
/// @returns {boolean} whether or not all emeralds were collected
function game_save_all_emeralds_found() {
	var index = -1;
	switch (argument_count) {
	case 1: index = argument[0];
	}

	var found = false;

	var file = game_save_find(index);
	with (file) {
	    found = (player_emeralds == int64(power(2, total_emeralds) - 1));
	}

	return found;



}
