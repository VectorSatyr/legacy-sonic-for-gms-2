/// @description Returns 'n' rounded down to the nearest multiple of 'm'
/// @argument {real} n number to round
/// @argument {real} m multiplier
/// @returns {real}
function floor_to(argument0, argument1) {
	var n = argument0;
	var m = argument1;

	return floor(n / m) * m;



}
