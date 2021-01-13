/// @description  Setup
ini_open(fname);
var section = "general";
volume_sound = ini_read_real(section, "volume_sound", volume_sound);
volume_music = ini_read_real(section, "volume_music", volume_music);
ini_close();

