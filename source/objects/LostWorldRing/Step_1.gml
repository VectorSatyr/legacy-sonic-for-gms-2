/// @description Fade away
if (game_is_running()) {
	if (life > 0) {
		--life;
		if (life == 0) {
			instance_destroy();
		}
	}
}