/// @description Destroys all GameSaveFiles and deletes their information from disk
function game_save_delete_all() {
	instance_perform_user_event(GameSaveFile, 4); // delete



}
