/// @description Checks if the given value 'n' is between the minimum 'a' and the maximum 'b', exclusively
/// @argument {real} n number to evaluate
/// @argument {real} a minimum value
/// @argument {real} b maximum value
/// @returns {boolean}
function in_range(argument0, argument1, argument2) {
	var n = argument0;
	var a = argument1;
	var b = argument2;

	var result = false;

	if (n > a and n < b) {
	    result = true;
	}

	return result;



}
