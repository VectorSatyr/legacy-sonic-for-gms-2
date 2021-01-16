/// @description Turns a real number into a string with the given formatting, except leading spaces are replaced with zeroes.
/// @argument {real} val real number to convert
/// @argument {real} total number of integer characters to show
/// @argument {real} dec number of decimal characters to show
/// @returns {real}
function string_format_zero(val, total, dec)
{
	return string_replace(string_format(val, total, dec), " ", "0");
}