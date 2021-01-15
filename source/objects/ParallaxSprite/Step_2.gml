/// @description Animate
if (game_is_running())
{
	image_index += frame_speed;
	x = x mod (width + x_separation);
	y = y mod (height + y_separation);
}