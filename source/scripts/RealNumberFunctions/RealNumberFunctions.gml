/// @description Returns 'value' rounded up to the nearest multiple of 'factor'
/// @argument {real} value number to round
/// @argument {real} factor multiplier
/// @returns {real}
function ceil_to(value, factor)
{
	return ceil(value / factor) * factor;
}

/// @description Returns 'value' rounded down to the nearest multiple of 'factor'
/// @argument {real} value number to round
/// @argument {real} factor multiplier
/// @returns {real}
function floor_to(value, factor)
{
	return floor(value / factor) * factor;
}

/// @description Returns 'value' rounded to the nearest multiple of 'factor'
/// @argument {real} value number to round
/// @argument {real} factor multiplier
/// @returns {real}
function round_to(value, factor)
{
	return round(value / factor) * factor;
}

/// @description Checks if the given value 'value' is between the minimum 'minimum' and the maximum 'maximum', exclusively
/// @argument {real} value number to evaluate
/// @argument {real} minimum minimum value
/// @argument {real} maximum maximum value
/// @returns {boolean}
function in_range(value, minimum, maximum)
{
	return (value > minimum and value < maximum);
}