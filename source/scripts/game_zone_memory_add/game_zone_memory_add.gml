function game_zone_memory_add(argument0, argument1) {
	var name = argument0;
	var value = argument1;

	if (not instance_exists(ZoneMemory)) {
		instance_create_layer(0, 0, "general", ZoneMemory);
	}

	with (ZoneMemory) {
		if (ds_map_exists(attributes, name)) {
			attributes[? name] = value;
		} else {
			ds_map_add(attributes, name, value);
		}
	}


}
