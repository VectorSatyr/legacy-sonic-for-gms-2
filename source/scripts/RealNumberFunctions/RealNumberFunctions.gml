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

/// @description Checks if the given 'value' is between the 'minimum' and the 'maximum', exclusively
/// @argument {real} value number to evaluate
/// @argument {real} minimum minimum value
/// @argument {real} maximum maximum value
/// @returns {boolean}
function between(value, minimum, maximum)
{
	return (value > minimum and value < maximum);
}

/// @description Checks if the given 'value' is between the 'minimum' and the 'maximum', inclusively
/// @argument {real} value number to evaluate
/// @argument {real} minimum minimum value
/// @argument {real} maximum maximum value
/// @returns {boolean}
function includes(value, minimum, maximum)
{
	return (value >= minimum and value <= maximum);
}

/// @description Returns 'value' wrapped between minimum and maximum
/// @argument {real} value number to wrap
/// @argument {real} minimum minimum value
/// @argument {real} maximum maximum value
/// @returns {real}
function range_mod(value, minimum, maximum)
{
	return (
		(value < minimum) ? 
		(maximum - (minimum - value)) : 
		(minimum + (value - minimum))
	) % (maximum - minimum);
}

/// @description Returns 'ang' wrapped between 0 and 360 degrees, inclusively
/// @argument {real} angle angle to wrap
/// @returns {real}
function angle_wrap(angle)
{
	return range_mod(angle, 0, 360);
}