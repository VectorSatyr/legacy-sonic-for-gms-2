/// @description Blur
if (not surface_exists(surface))
{
	var w = surface_get_width(application_surface);
	var h = surface_get_height(application_surface);
	surface = surface_create(w, h);
}
surface_copy(surface, 0, 0, application_surface);
surface_set_target(application_surface);
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false, true, false, false);
draw_surface(surface, 0, 0);
gpu_set_colorwriteenable(true, false, false, false);
draw_surface(surface, -1, 0);
gpu_set_colorwriteenable(false, false, true, false);
draw_surface(surface, 1, 0);
gpu_set_colorwriteenable(true, true, true, true);
gpu_set_blendenable(true);
surface_reset_target();