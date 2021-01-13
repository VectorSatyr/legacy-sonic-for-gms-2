/// @description Reads the information from disk to the current save 'slot'
/// @argument {real} index (Optional) save 'slot' to update
function game_save_read() {
	var index = -1;
	switch (argument_count) {
	case 1: index = argument[0];
	}

	var file = game_save_find(index);
	instance_perform_user_event(file, 2) // read



}
