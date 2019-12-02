/// @description Creates a new parallax background with the given properties
/// @argument {real} back background index
/// @argument {real} left background area top-left x-position
/// @argument {real} top background area top-left y-position
/// @argument {real} width background area width
/// @argument {real} height background area height
/// @argument {real} ox absolute screen x-position
/// @argument {real} oy absolute screen y-position
/// @argument {boolean} x_tiled (Optional) whether to tile the background horizontally 
/// @argument {boolean} y_tiled (Optional) whether to tile the background vertically
/// @argument {real} x_ratio (Optional) factor to scroll the x-position against the view's x-position
/// @argument {real} y_ratio (Optional) factor to scroll the y-position against the view's y-position
/// @argument {real} x_separation (Optional) amount of horizontal space between tiled images
/// @argument {real} y_separation (Optional) amount of vertical space between tiled images
/// @argument {real} x_speed (Optional) horizontal speed to automatically scroll
/// @argument {real} y_speed (Optional) vertical speed to automatically scroll
/// @returns {real} instance index of ParallaxLayer (or undefined on error)
var x_tiled = false;
var y_tiled = false;
var x_ratio = 1;
var y_ratio = 1;
var x_separation = 0;
var y_separation = 0;
var x_speed = 0;
var y_speed = 0;
switch (argument_count) {
case 15: y_speed = argument[14];
case 14: x_speed = argument[13];
case 13: y_separation = argument[12];
case 12: x_separation = argument[11];
case 11: y_ratio = argument[10];
case 10: x_ratio = argument[9];
case 9: y_tiled = argument[8];
case 8: x_tiled = argument[7];
default:
    var oy = argument[6];
    var ox = argument[5];
    var height = argument[4];
    var width = argument[3];
    var top = argument[2];
    var left = argument[1];
    var back = argument[0];
}

with (instance_create_layer(0, 0, "backgrounds", ParallaxLayer)) {
    self.back = back;
    self.left = left;
    self.top = top;
    self.width = width;
    self.height = height;
    x_absolute = ox;
    y_absolute = oy;
    tile_horizontal = x_tiled;
    tile_vertical = y_tiled;
    x_scroll = x_ratio;
    y_scroll = y_ratio;
    self.x_separation = x_separation;
    self.y_separation = y_separation;
    self.x_speed = x_speed;
    self.y_speed = y_speed;
    return id;
}

return undefined;
