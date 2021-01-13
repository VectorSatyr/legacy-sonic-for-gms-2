/// @description Write
game_save_write_all();
ini_open(fname);
ini_write_real("general", "last_save_index", index);
ini_close();