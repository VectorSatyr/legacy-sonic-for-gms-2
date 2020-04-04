/// @description  Shade
if (not surface_exists(surface)) {
	surface = surface_create(CAMERA_WIDTH, CAMERA_HEIGHT);
}
var w = surface_get_width(application_surface);
var h = surface_get_height(application_surface);
surface_set_target(surface);
draw_clear_alpha(image_blend, 0);
draw_surface_ext(application_surface, 0, 0, CAMERA_WIDTH / w, CAMERA_HEIGHT / h, image_angle, image_blend, image_alpha);
surface_reset_target();
shader_set(shader);
var uniform = shader_get_uniform(shader, "u_fTransition");
shader_set_uniform_f(uniform, transition);
var camera = view_get_camera(view_current);
draw_surface(surface, camera_get_view_x(camera), camera_get_view_y(camera));
shader_reset();