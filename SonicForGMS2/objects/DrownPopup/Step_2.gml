/// @description  Animate
event_inherited();
if (game_is_running()) {
	if (locked and timer < 48) {
		image_alpha = 1 - ((timer div 8) mod 2);
	}
}