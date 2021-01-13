/// @description Read
ini_open(fname);
var section = "touch";
enabled = ini_read_real(section, "enabled", enabled);
min_opacity = ini_read_real(section, "min_opacity", min_opacity);
max_opacity = ini_read_real(section, "max_opacity", max_opacity);
scale = ini_read_real(section, "scale", scale);
ini_close();