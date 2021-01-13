/// @description Shade
if (not surface_exists(surface))
{
	var w = surface_get_width(application_surface);
	var h = surface_get_height(application_surface);
	surface = surface_create(w, h);
}
surface_copy(surface, 0, 0, application_surface);
surface_set_target(application_surface);
shader_set(shader);
var uniform = shader_get_uniform(shader, "u_fTransition");
shader_set_uniform_f(uniform, transition);
draw_surface(surface, 0, 0);
shader_reset();
surface_reset_target();