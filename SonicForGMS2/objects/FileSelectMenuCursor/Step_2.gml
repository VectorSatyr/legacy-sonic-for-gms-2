/// @description Animate
image_alpha = (game_clock_get_step() div flicker_frames) mod 2;
if (target != noone)
{
	image_index = (string_letters(target.name) == "nosave" or string_letters(target.name) == "delete") ? 1 : 0;
}