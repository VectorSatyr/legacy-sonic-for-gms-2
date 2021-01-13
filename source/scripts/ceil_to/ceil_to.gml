/// @description Returns 'n' rounded up to the nearest multiple of 'm'
/// @argument {real} n number to round
/// @argument {real} m multiplier
/// @returns {real}
function ceil_to(argument0, argument1) {
	var n = argument0;
	var m = argument1;

	return ceil(n / m) * m;



}
