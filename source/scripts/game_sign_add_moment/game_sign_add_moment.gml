/// @description Adds a new animation to an existing AnimatedGameSign
/// @argument {real} ind instance index of AnimatedGameSign
/// @argument {real} duration amount of frames to animate
/// @argument {real} delay amount of frames to wait before animating
/// @argument {real} xpos x-position to move towards
/// @argument {real} ypos y-position to move towards
/// @argument {real} xscale horizontal scale to stretch the image towards
/// @argument {real} yscale vertical scale to stretch the image towards
/// @argument {real} rot angle to rotate towards
/// @argument {real} color color to blend towards
/// @argument {real} alpha transparency level to blend towards
function game_sign_add_moment(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {
	var ind = argument0;
	var duration = argument1;
	var delay = argument2;
	var xpos = argument3;
	var ypos = argument4;
	var xscale = argument5;
	var yscale = argument6;
	var rot = argument7;
	var color = argument8;
	var alpha = argument9;

	with (ind) {
	    ds_list_add(moment_duration, duration);
	    ds_list_add(moment_delay, delay);
	    ds_list_add(moment_x, xpos);
	    ds_list_add(moment_y, ypos);
	    ds_list_add(moment_xscale, xscale);
	    ds_list_add(moment_yscale, yscale);
	    ds_list_add(moment_angle, rot);
	    ds_list_add(moment_blend, color);
	    ds_list_add(moment_alpha, alpha);
	    ++moment_count;
	}



}
