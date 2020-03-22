/// @description  Release (and animate)
if (game_is_running()) {
    image_index = (game_clock_get_step() div 16) mod 2;
    if (game_clock_get_step() mod 240 == 0) {
        var last_pattern = pattern;
        while (pattern == last_pattern) {
            pattern = irandom(3);
        }
		var timeline = asset_get_index("BubblePattern" + string(1 + pattern) + "Time");
		timeline_set(self, timeline);
    }
}