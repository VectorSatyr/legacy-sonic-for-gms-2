/// @description  Initialize
image_speed = 0;
shader = ColorReplaceShd;

total_colors = 7;
palette_size = 10;
for (var n = 0; n < palette_size; ++n) {
	output[n] = array_create(total_colors);
}

// shader uniforms
u_color_count = shader_get_uniform(shader, "u_iTotalColors");
u_color_in = shader_get_uniform(shader, "u_vInputColor");
u_color_out = shader_get_uniform(shader, "u_vOutputColor");
u_tolerance = shader_get_uniform(shader, "u_vTolerance");
u_blend = shader_get_uniform(shader, "u_fBlendFactor");

// inputs
output_color = array_create(total_colors);
tolerance = $010101;
blend = 0;

// palettes
input[0] = make_color_rgb(192, 192, 224);
input[1] = make_color_rgb(160, 160, 224);
input[2] = make_color_rgb(128, 128, 224);
input[3] = make_color_rgb(96, 96, 224);
input[4] = make_color_rgb(64, 64, 224);
input[5] = make_color_rgb(32, 32, 224);
input[6] = make_color_rgb(0, 0, 224);
output[0, 0] = make_color_rgb(224, 224, 224);
output[0, 1] = make_color_rgb(192, 192, 224);
output[0, 2] = make_color_rgb(192, 192, 224);
output[0, 3] = make_color_rgb(160, 160, 224);
output[0, 4] = make_color_rgb(160, 160, 224);
output[0, 5] = make_color_rgb(128, 128, 224);
output[0, 6] = make_color_rgb(128, 128, 224);
output[1, 0] = make_color_rgb(224, 192, 224);
output[1, 1] = make_color_rgb(224, 160, 224);
output[1, 2] = make_color_rgb(224, 128, 224);
output[1, 3] = make_color_rgb(224, 96, 224);
output[1, 4] = make_color_rgb(224, 64, 224);
output[1, 5] = make_color_rgb(224, 32, 224);
output[1, 6] = make_color_rgb(224, 0, 224);
output[2, 0] = make_color_rgb(224, 192, 192);
output[2, 1] = make_color_rgb(224, 160, 160);
output[2, 2] = make_color_rgb(224, 128, 128);
output[2, 3] = make_color_rgb(224, 96, 96);
output[2, 4] = make_color_rgb(224, 64, 64);
output[2, 5] = make_color_rgb(224, 32, 32);
output[2, 6] = make_color_rgb(224, 0, 0);
output[3, 0] = make_color_rgb(224, 224, 192);
output[3, 1] = make_color_rgb(224, 192, 160);
output[3, 2] = make_color_rgb(224, 192, 128);
output[3, 3] = make_color_rgb(224, 160, 96);
output[3, 4] = make_color_rgb(224, 160, 96);
output[3, 5] = make_color_rgb(224, 128, 32);
output[3, 6] = make_color_rgb(224, 128, 32);
output[4, 0] = make_color_rgb(224, 224, 192);
output[4, 1] = make_color_rgb(224, 224, 160);
output[4, 2] = make_color_rgb(224, 224, 128);
output[4, 3] = make_color_rgb(224, 224, 96);
output[4, 4] = make_color_rgb(224, 224, 64);
output[4, 5] = make_color_rgb(224, 224, 32);
output[4, 6] = make_color_rgb(224, 224, 0);
output[5, 0] = make_color_rgb(224, 224, 192);
output[5, 1] = make_color_rgb(192, 224, 160);
output[5, 2] = make_color_rgb(192, 224, 128);
output[5, 3] = make_color_rgb(160, 224, 96);
output[5, 4] = make_color_rgb(160, 224, 64);
output[5, 5] = make_color_rgb(128, 224, 32);
output[5, 6] = make_color_rgb(128, 224, 0);
output[6, 0] = make_color_rgb(192, 224, 192);
output[6, 1] = make_color_rgb(160, 224, 160);
output[6, 2] = make_color_rgb(128, 224, 128);
output[6, 3] = make_color_rgb(96, 224, 96);
output[6, 4] = make_color_rgb(64, 224, 64);
output[6, 5] = make_color_rgb(32, 224, 32);
output[6, 6] = make_color_rgb(0, 224, 0);
output[7, 0] = make_color_rgb(192, 224, 224);
output[7, 1] = make_color_rgb(160, 224, 192);
output[7, 2] = make_color_rgb(128, 224, 192);
output[7, 3] = make_color_rgb(96, 224, 160);
output[7, 4] = make_color_rgb(64, 224, 160);
output[7, 5] = make_color_rgb(32, 224, 128);
output[7, 6] = make_color_rgb(0, 224, 128);
output[8, 0] = make_color_rgb(192, 224, 224);
output[8, 1] = make_color_rgb(160, 224, 224);
output[8, 2] = make_color_rgb(128, 224, 224);
output[8, 3] = make_color_rgb(96, 224, 224);
output[8, 4] = make_color_rgb(64, 224, 224);
output[8, 5] = make_color_rgb(32, 224, 224);
output[8, 6] = make_color_rgb(0, 224, 224);