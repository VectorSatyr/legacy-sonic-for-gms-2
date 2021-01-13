/// @description Returns 'ang' wrapped between 0 and 359 degrees
/// @argument {real} ang angle to wrap
/// @returns {real}
function angle_wrap(argument0) {
	var ang = argument0;

	var result = ang mod 360;

	if (ang < 0) {
	    result += 360;
	}

	return result;



}
