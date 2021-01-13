/// @description  Draw
if (view_render[view_current])
{
	var w = surface_get_width(application_surface);
	var h = surface_get_height(application_surface);
	var color = draw_get_color();

	if (not surface_exists(base_surface))
	{
		base_surface = surface_create(w, h);
	}

	var vx = view_get_xport(view_current);
	var vy = view_get_yport(view_current);
	var vw = view_get_wport(view_current);
	var vh = view_get_hport(view_current);

	surface_set_target(base_surface);
	draw_surface_part_ext(application_surface, vx, vy, vw, vh, 0, 0, w / vw, h / vh, image_blend, 1);
	surface_reset_target();

	if (not surface_exists(final_surface))
	{
		final_surface = surface_create(vw, vh);
	}

	var cam = view_get_camera(view_current);
	var cx = camera_get_view_x(cam);
	var cy = camera_get_view_y(cam);

	surface_set_target(final_surface);
	draw_clear_alpha(background_color, 0);
	draw_set_color(c_white);
	if (not flashing)
	{
		shader_set(shader);
		shader_set_uniform_f(u_resolution, camera_get_view_width(cam), camera_get_view_height(cam));
		shader_set_uniform_f(u_magnitude, x_magnitude, y_magnitude);
		shader_set_uniform_f(u_cycles, x_cycles, y_cycles);
		shader_set_uniform_f(u_time, cycle_time);
		texture_set_stage(u_texture, surface_get_texture(base_surface));
	}
	with (Water)
	{
		draw_rectangle(bbox_left - cx, bbox_top - cy, bbox_right - cx, bbox_bottom - cy, false);
	}
	if (not flashing)
	{
		shader_reset();
	}
	surface_reset_target();

	draw_surface(final_surface, cx, cy);
	draw_set_color(color);
}