/// @description  Animate
if (game_is_running()) {
	switch (state) {
	case "exiting":
		if (continues_count > 0) {
			post_continue_icon.image_index = game_clock_get_step() div 22;
			if ((timer div 16) mod 2 == 0) {
				post_continue_icon.visible = true;
			} else {
				post_continue_icon.visible = false;
			}
			break;
		}
	}
}