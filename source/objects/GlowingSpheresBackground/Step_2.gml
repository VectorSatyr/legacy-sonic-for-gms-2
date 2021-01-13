/// @description  Animate
if (game_is_running()) {
	anim_frame = (anim_frame + anim_speed) mod 99;
	index = 1 + anim_frame;
}