/// @description Creates a new parallax background with the given properties
/// @argument {real} sprite background index
/// @argument {real} subimg image index
/// @argument {real} subspd image update speed
/// @argument {real} left background area top-left x-position
/// @argument {real} top background area top-left y-position
/// @argument {real} width background area width
/// @argument {real} height background area height
/// @argument {real} ox absolute screen x-position
/// @argument {real} oy absolute screen y-position
/// @argument {boolean} x_tiled (Optional) whether to tile the background horizontally 
/// @argument {boolean} y_tiled (Optional) whether to tile the background vertically
/// @argument {real} x_scroll (Optional) factor to scroll the x-position against the view's x-position
/// @argument {real} y_scroll (Optional) factor to scroll the y-position against the view's y-position
/// @argument {real} x_separation (Optional) amount of horizontal space between tiled images
/// @argument {real} y_separation (Optional) amount of vertical space between tiled images
/// @argument {real} x_speed (Optional) horizontal speed to automatically scroll
/// @argument {real} y_speed (Optional) vertical speed to automatically scroll
/// @returns {real} instance index of ParallaxSprite
function game_parallax_add_sprite_part() {
	var x_tiled = false;
	var y_tiled = false;
	var x_scroll = 1;
	var y_scroll = 1;
	var x_separation = 0;
	var y_separation = 0;
	var x_speed = 0;
	var y_speed = 0;
	switch (argument_count)
	{
	case 17: y_speed = argument[16];
	case 16: x_speed = argument[15];
	case 15: y_separation = argument[14];
	case 14: x_separation = argument[13];
	case 13: y_scroll = argument[12];
	case 12: x_scroll = argument[11];
	case 11: y_tiled = argument[10];
	case 10: x_tiled = argument[9];
	default:
	    var oy = argument[8];
	    var ox = argument[7];
	    var height = argument[6];
	    var width = argument[5];
	    var top = argument[4];
	    var left = argument[3];
	    var subspd = argument[2];
	    var subimg = argument[1];
	    var sprite = argument[0];
	}

	var back = instance_create_layer(0, 0, "backgrounds", ParallaxSprite);
	back.sprite_index = sprite;
	back.image_index = subimg;
	back.frame_speed = subspd;
	back.left = left;
	back.top = top;
	back.width = width;
	back.height = height;
	back.x_absolute = ox;
	back.y_absolute = oy;
	back.tile_horizontal = x_tiled;
	back.tile_vertical = y_tiled;
	back.x_scroll = x_scroll;
	back.y_scroll = y_scroll;
	back.x_separation = x_separation;
	back.y_separation = y_separation;
	back.x_speed = x_speed;
	back.y_speed = y_speed;
	return back;


}
