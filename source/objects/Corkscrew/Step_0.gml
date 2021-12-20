 /// @description Control
if (game_is_running()) {
	with (PlayableCharacter) {
		if (linked_object_id == other.id) {
			player_is_running("step"); // same as running
		}
	}
}