/// @description Read
if (includes(index, 0, MAX_GAME_SAVES - 1)) {
	ini_open(fname);
	var section = "save" + string(index);
	if (ini_section_exists(section)) {
		complete = ini_read_real(section, "complete", complete);
		player_character = asset_get_index(
			ini_read_string(section, "player_character", player_character)
		);
		assist_character = asset_get_index(
			ini_read_string(section, "assist_character", assist_character)
		);
		player_lives = ini_read_real(section, "player_lives", player_lives);
		player_continues = ini_read_real(
			section, "player_continues", player_continues
		);
		player_emeralds = int64(ini_read_real(
			section, "player_emeralds", player_emeralds
		));
		location = asset_get_index(
			ini_read_string(section, "location", location)
		);
	}
	ini_close();
}