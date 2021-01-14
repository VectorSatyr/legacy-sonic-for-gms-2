/// @description Create Stats
event_inherited();
location = instance_create_layer(location_x, location_y, "elements", FSFileLocation);
location.owner = id;
emeralds = instance_create_layer(emeralds_x, emeralds_y, "elements", FSFileEmeralds);
emeralds.owner = id;
stats = instance_create_layer(stats_x, stats_y, "elements", FSFileStats);
stats.image_index = character_index;
stats.owner = id;