/// @description  Setup
instance_destroy(GameSaveFile);

var section, file;
ini_open(fname);
index = ini_read_real("general", "last_save_index", index);
for (var n = 0; n < MAX_GAME_SAVES; ++n) {
    section = "save" + string(n);
    if (ini_section_exists(section)) {
        file = instance_create_layer(0, 0, "general", GameSaveFile);
        file.fname = fname;
        file.index = n;
    }
}
ini_close();
instance_perform_user_event(GameSaveFile, 2); // read

