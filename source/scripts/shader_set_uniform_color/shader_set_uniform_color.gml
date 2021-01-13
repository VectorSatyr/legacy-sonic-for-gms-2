/// @description Converts a 32-bit color value to a vec3 shader constant. You must previously have gotten the "handle" of the constant using the function shader_get_uniform. 
/// @argument {real} uniform_id shader constant handle
/// @argument {real} color 32-bit color value
function shader_set_uniform_color(argument0, argument1) {
	var uniform_id = argument0;
	var color = argument1;

	var red = color_get_red(color) / 256;
	var green = color_get_green(color) / 256;
	var blue = color_get_blue(color) / 256;

	shader_set_uniform_f(uniform_id, red, green, blue);



}
