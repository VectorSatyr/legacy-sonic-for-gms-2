/// @description  Initialize
event_inherited();
shader = ColorReplaceShd;
previous_shader = -1;

state = "normal";

total_colors = 4;

normal_color = array_create(total_colors);
transform_color = array_create(total_colors);
super_color = array_create(total_colors);
super_fade_color = array_create(total_colors);

blend_ratio = 0;
blend_offset = 0;
blend_speed = 0.045;
blend_pulse_speed = 0.08;

// shader uniforms
u_color_count = shader_get_uniform(shader, "u_iTotalColors");
u_color_in = shader_get_uniform(shader, "u_vInputColor");
u_color_out = shader_get_uniform(shader, "u_vOutputColor");
u_tolerance = shader_get_uniform(shader, "u_vTolerance");
u_blend = shader_get_uniform(shader, "u_fBlendFactor");

// inputs
input_color = array_create(total_colors);
output_color = array_create(total_colors);
tolerance = $010101;
blend = 0;