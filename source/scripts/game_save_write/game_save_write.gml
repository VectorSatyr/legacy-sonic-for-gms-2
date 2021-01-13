/// @description Writes the information from the current save 'slot' to disk
/// @argument {real} index (Optional) save 'slot' to write
function game_save_write() {
	var index = -1;
	switch (argument_count) {
	case 1: index = argument[0];
	}

	var file = game_save_find(index);
	instance_perform_user_event(file, 3); // write



}
