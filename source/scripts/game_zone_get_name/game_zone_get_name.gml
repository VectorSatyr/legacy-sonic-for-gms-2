/// @description Acquires the current zone name
/// @returns {string} zone name
function game_zone_get_name() {
	var name = "";

	with (ZoneConfiguration) {
	    name = self.name;
	}

	return name;


}
