/// @description Creates a new sprite-based parallax background with the given properties
/// @argument {real} sprite sprite index
/// @argument {real} subimg image index
/// @argument {real} subspd image update speed
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
function game_parallax_add_sprite() {
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
	case 13: y_speed = argument[12];
	case 12: x_speed = argument[11];
	case 11: y_separation = argument[10];
	case 10: x_separation = argument[9];
	case 9: y_scroll = argument[8];
	case 8: x_scroll = argument[7];
	case 7: y_tiled = argument[6];
	case 6: x_tiled = argument[5];
	default:
	    var oy = argument[4];
	    var ox = argument[3];
	    var subspd = argument[2];
	    var subimg = argument[1];
	    var sprite = argument[0];
	}

	var back = instance_create_layer(0, 0, "backgrounds", ParallaxSprite);
	back.sprite_index = sprite;
	back.image_index = subimg;
	back.frame_speed = subspd;
	back.x_absolute = ox;
	back.y_absolute = oy;
	back.width = sprite_get_width(sprite);
	back.height = sprite_get_height(sprite);
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
