/// @description Acquires the current zone act
/// @returns {real} zone act number
function game_zone_get_act() {
	var act = -1;

	with (ZoneConfiguration) {
	    act = self.act;
	}

	return act;


}
