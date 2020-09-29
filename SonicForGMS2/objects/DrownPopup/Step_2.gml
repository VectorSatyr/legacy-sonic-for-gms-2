/// @description Animate
if (game_is_running())
{
	visible = (timer >= 48 or ((timer div 8) mod 2) == 0);
	if (visible and not is_undefined(camera))
	{
		cx = (camera_get_view_x(camera) + x) div 1;
		cy = (camera_get_view_y(camera) + y) div 1;
	}
}