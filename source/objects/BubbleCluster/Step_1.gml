/// @description  Spawn
if (game_is_running()) {
	if (game_clock_get_step() mod time_until_spawn == 0) {
		ds_list_clear(pattern_list);
		for (var n = 0; n < total_patterns; ++n) {
			if (n != pattern) {
				ds_list_add(pattern_list, n);
			}
		}
		pattern = pattern_list[| irandom(total_patterns - 2)];
		var timeline = asset_get_index("BubblePattern" + string(pattern + 1) + "Time");
		if (timeline > -1) {
			var spawn = instance_create_layer(x, y, layer, BubblePattern);
			timeline_set(spawn, timeline, 1, false, true);
		}
    }
}