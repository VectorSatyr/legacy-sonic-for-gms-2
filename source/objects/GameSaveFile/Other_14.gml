/// @description Delete
if (includes(index, 0, MAX_GAME_SAVES - 1)) {
	ini_open(fname);
	var section = "save" + string(index);
	if (ini_section_exists(section)) ini_section_delete(section);
	ini_close();
	instance_destroy();
}