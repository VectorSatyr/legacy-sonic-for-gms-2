/// @description Saves information from all GameSaveFiles to disk
function game_save_write_all() {
	instance_perform_user_event(GameSaveFile, 3); // write


}
