/// @description Render
surface_set_target(application_surface);
if (sprite_index > -1)
{
	draw_self();
}
surface_reset_target();