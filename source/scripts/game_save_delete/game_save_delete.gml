/// @description Deletes the information of the current save 'slot' from memory (GameSaveFile) and from disk
/// @argument {real} index (Optional) save 'slot' to delete
function game_save_delete() {
	var index = -1;
	switch (argument_count) {
	case 1: index = argument[0];
	}

	var file = game_save_find(index);
	instance_perform_user_event(file, 4); // delete



}
