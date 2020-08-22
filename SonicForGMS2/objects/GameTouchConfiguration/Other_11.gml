/// @description Refresh
with (TouchUISign)
{
	image_xscale = other.scale;
	image_yscale = other.scale;
	min_alpha = other.min_opacity;
	max_alpha = other.max_opacity;
}
with (TouchPauseButton)
{
	image_xscale = 1;
	image_yscale = 1;
	min_alpha = 1;
	max_alpha = 1;
}
with (TouchButton)
{
	image_xscale *= 0.86;
	image_yscale *= 0.86;
	button_resting_scale = other.scale;
	button_touched_scale = button_scale * 0.9;
}
with (TouchAnalogStick)
{
	var opacity = min(max_alpha * 1.3, 1);
	frame_right.min_alpha = 0;
	frame_right.max_alpha = opacity;
	frame_left.min_alpha = 0;
	frame_left.max_alpha = opacity;
	frame_down.min_alpha = 0;
	frame_down.max_alpha = opacity;
	frame_up.min_alpha = 0;
	frame_up.max_alpha = opacity;
}