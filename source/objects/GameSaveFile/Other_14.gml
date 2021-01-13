/// @description  Delete
if (in_range(index, -1, MAX_GAME_SAVES)) {
    ini_open(fname);
    var section = "save" + string(index);
    if (ini_section_exists(section)) {
        ini_section_delete(section);
    }
    ini_close();
    instance_destroy();
}

