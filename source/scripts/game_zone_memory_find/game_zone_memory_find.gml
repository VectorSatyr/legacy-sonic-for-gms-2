function game_zone_memory_find(argument0) {
	var name = argument0;

	var result = undefined;

	with (ZoneMemory) {
		if (ds_map_exists(attributes, name)) {
			result = attributes[? name];
		}
	}

	return result;


}
