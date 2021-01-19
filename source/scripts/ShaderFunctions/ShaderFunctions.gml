/// @description Converts a 32-bit color value to an array of color channels (red, green and blue.) 
/// @argument {real} color 32-bit color value
function color_get_array_rgb(col)
{
	var array = array_create(3, 0);
	array[0] = color_get_red(col);
	array[1] = color_get_green(col);
	array[2] = color_get_blue(col);
	return array;
}

/// @description Converts an array of 32-bit color values to a vec3 shader constant array. You must previously have gotten the "handle" of the array using the function shader_get_uniform. 
/// @argument {real} uniform_id shader constant array handle
/// @argument {real} colors array of 32-bit color values
function shader_set_uniform_color_array(uniform_id, colors)
{
	if (is_array(colors) and array_length(colors) > 0) {
		var length = array_length(colors);
		var array = [];
		var color;
		for (var n = 0; n < length; ++n) {
			color = color_get_array_rgb(colors[n]);
			array_push(array, color[0] / 255, color[1] / 255, color[2] / 255);
		}
		shader_set_uniform_f_array(uniform_id, array);
	}
}