/// @description Initialize
shader = PaletteShd;
previous_shader = -1;

// shader uniforms
sampled_id = shader_get_sampler_index(shader, "u_sPalette");
u_coords = shader_get_uniform(shader, "u_vPalcoords");
u_size = shader_get_uniform(shader, "u_vSize");
u_index = shader_get_uniform(shader, "u_fIndex");
u_tolerance = shader_get_uniform(shader, "u_fTolerance");

// inputs
texture = sprite_get_texture(sprite_index, 0);
coords = texture_get_uvs(texture);
size[0] = texture_get_texel_width(texture);
size[1] = texture_get_texel_height(texture);
index = 0;
tolerance = 0.004;

total_colors = sprite_height - 1;
flicker_rate = 2;