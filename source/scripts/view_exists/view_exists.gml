/// @description Checks if the given view index is valid
/// @argument {real} vind view port
/// @returns {boolean}
function view_exists(argument0) {
	var vind = argument0;

	return in_range(vind, -1, MAX_VIEW_COUNT);



}
