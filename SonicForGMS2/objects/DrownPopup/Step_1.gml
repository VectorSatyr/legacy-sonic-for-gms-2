/// @description  Morph
event_inherited();
if (game_is_running()) {
	if (not locked) {
		if (size >= maximum_size) {
			size = maximum_size;
			var cam = view_get_camera(vind);
            view_offset_x = x - camera_get_view_x(cam);
            view_offset_y = y - camera_get_view_y(cam);
			timer = duration;
            locked = true;
		}
	} else {
		--timer;
        if (timer <= 0) {
            instance_destroy();
        }
	}
}