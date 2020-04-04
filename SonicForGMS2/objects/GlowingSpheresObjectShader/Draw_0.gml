/// @description  Shade
if (image_index != 0) {
	var previous_shader = shader_current();
	shader_set(shader);
	shader_set_uniform_i(u_color_count, total_colors);
	shader_set_uniform_color_array(u_color_in, input);
	shader_set_uniform_color_array(u_color_out, output_color);
	shader_set_uniform_color(u_tolerance, tolerance);
	shader_set_uniform_f(u_blend, blend);
	with (GlowingSpheresLargeSphere) {
		draw_self();
	}
	with (GlowingSpheresWallBumper) {
		if (timer > 0) {
			draw_self();
		}
	}
	shader_reset();
	if (previous_shader != -1) {
	    shader_set(previous_shader);
	}
}