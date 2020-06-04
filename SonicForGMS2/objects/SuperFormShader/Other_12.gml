/// @description Shade
if (shader_current() != shader)
{
    previous_shader = shader_current();
    shader_set(shader);
	shader_set_uniform_i(u_color_count, total_colors);
    shader_set_uniform_color_array(u_color_in, input_color);
    shader_set_uniform_color_array(u_color_out, output_color);
    shader_set_uniform_f(u_tolerance, tolerance);
}