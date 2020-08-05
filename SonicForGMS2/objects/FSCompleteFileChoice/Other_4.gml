/// @description Create Stats
event_inherited();
location = instance_create_layer(location_x, location_y, "elements", FSCompleteFileLocation);
location.owner = self;
emeralds = instance_create_layer(emeralds_x, emeralds_y, "elements", FSFileEmeralds);
emeralds.owner = self;
stats = instance_create_layer(stats_x, stats_y, "elements", FSFileStats);
stats.image_index = character_index;
stats.owner = self;