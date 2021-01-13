/// @description  Write
ini_open(fname);
var section = "general";
ini_write_real(section, "volume_sound", volume_sound);
ini_write_real(section, "volume_music", volume_music);
ini_close();

