/// @description Write
if (includes(index, 0, MAX_GAME_SAVES - 1)) {
	ini_open(fname);
	var section = "save" + string(index);
	if (object_exists(player_character)) {
		ini_write_string(
			section, "player_character", object_get_name(player_character)
		);
	}
	if (object_exists(assist_character)) {
		ini_write_string(
			section, "assist_character", object_get_name(assist_character)
		);
	}
	ini_write_real(section, "complete", complete);
	ini_write_real(section, "player_continues", player_continues);
	ini_write_real(section, "player_lives", player_lives);
	ini_write_real(section, "player_emeralds", player_emeralds);
	if (room_exists(location)) {
		ini_write_string(section, "location", room_get_name(location));
	}
	ini_close();
}