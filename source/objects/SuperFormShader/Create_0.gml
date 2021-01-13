/// @description Initialize
event_inherited();
shader = ColorReplaceShd;
previous_shader = -1;

state = "normal";

// shader uniforms
u_color_count = shader_get_uniform(shader, "u_iTotalColours");
u_color_in = shader_get_uniform(shader, "u_vInputColour");
u_color_out = shader_get_uniform(shader, "u_vOutputColour");
u_tolerance = shader_get_uniform(shader, "u_fTolerance");

// inputs
total_colors = 4;
input_color = array_create(total_colors);
output_color = array_create(total_colors);
tolerance = 0.005;

normal_color = array_create(total_colors);
transform_color = array_create(total_colors);
super_color = array_create(total_colors);
super_fade_color = array_create(total_colors);

blend_ratio = 0;
blend_offset = 0;
blend_speed = 0.045;
blend_pulse_speed = 0.08;