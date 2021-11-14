/// @description Register
event_inherited();
with (TouchUISign) {
	touched = false;
}
for (var n = 0; n < max_touches; ++n) {
	if (device_mouse_check_button(n, mb_left)) {
		var ox = device_mouse_x_to_gui(n);
		var oy = device_mouse_y_to_gui(n);
		with (GUILayer) {
			ox *= game_width / gui_width;
			oy *= game_height / gui_height;
		}
		with (TouchUISign) {
			if (enabled and (
				device == n or collision_point(ox, oy, id, true, false)
			)) {
				touched = true;
				device = n;
				posX = ox;
				posY = oy;
				event_user(0);
			}
		}
	}
}
with (TouchUISign) {
	if (not touched) {
		device = -1;
	}
}