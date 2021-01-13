/// @description Converts an array of 32-bit color values to a vec3 shader constant array. You must previously have gotten the "handle" of the array using the function shader_get_uniform. 
/// @argument {real} uniform_id shader constant array handle
/// @argument {real} colors array of 32-bit color values
function shader_set_uniform_color_array(argument0, argument1) {
	var uniform_id = argument0;
	var colors = argument1;

	var size = array_length_1d(colors);
	var array = array_create(size * 3);
	var offset;
	for (var row = 0; row < size; ++row) {
	    offset = row * 3;
	    array[offset] = color_get_red(colors[row]) / 256;
	    array[offset + 1] = color_get_green(colors[row]) / 256;
	    array[offset + 2] = color_get_blue(colors[row]) / 256;
	}

	shader_set_uniform_f_array(uniform_id, array);



}
