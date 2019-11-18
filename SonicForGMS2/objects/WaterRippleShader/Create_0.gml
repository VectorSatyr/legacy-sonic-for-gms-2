event_inherited();
/// Initialize
image_speed = 0;

x_magnitude = 0; //0.00125;
y_magnitude = 0.002; //0.00125;
x_cycles = 0; //6.126;
y_cycles = 0.1; //6.126;
cycle_speed = 3;
cycle_time = 0;

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

