/// @description Creates a custom spawn point for the player instance (or overrites an existing one)
/// @argument {real} ox spawn x-position
/// @argument {real} oy spawn y-position
/// @argument {real} epoch (Optional) spawn zone time in frames
/// @argument {real} location (Optional) room index to spawn into
function game_zone_check_point_record() {
	var epoch = game_clock_get_step();
	var location = room;
	switch (argument_count) {
	case 4: location = argument[3];
	case 3: epoch = argument[2];
	default:
	    var oy = argument[1];
	    var ox = argument[0];
	}

	if (not instance_exists(ZoneCheckPoint)) {
		instance_create_layer(ox, oy, "general", ZoneCheckPoint);
	}

	with (ZoneCheckPoint) {
		self.x = ox;
		self.y = oy;
		self.location = location;
		self.epoch = epoch;
	}


}
