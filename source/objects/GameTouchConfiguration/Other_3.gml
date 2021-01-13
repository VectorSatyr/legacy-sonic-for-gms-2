/// @description Write
ini_open(fname);
var section = "touch";
ini_write_real(section, "enabled", enabled);
ini_write_real(section, "min_opacity", min_opacity);
ini_write_real(section, "max_opacity", max_opacity);
ini_write_real(section, "scale", scale);
ini_close();