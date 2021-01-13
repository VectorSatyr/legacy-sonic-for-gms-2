/// @description  Initialize
event_inherited();

base_surface = -1;
final_surface = -1;
width = -1;
height = -1;

view_render[MAX_VIEW_COUNT] = false;

shader = RippleShd;
u_resolution = shader_get_uniform(shader, "u_vResolution");
u_magnitude = shader_get_uniform(shader, "u_vMagnitude");
u_cycles = shader_get_uniform(shader, "u_vCycles");
u_time = shader_get_uniform(shader, "u_fTime");
u_texture = shader_get_sampler_index(shader, "u_sTexture");

x_magnitude = 0;
y_magnitude = 0.002;
x_cycles = 0;
y_cycles = 0.1;
cycle_speed = 3;
cycle_time = 0;