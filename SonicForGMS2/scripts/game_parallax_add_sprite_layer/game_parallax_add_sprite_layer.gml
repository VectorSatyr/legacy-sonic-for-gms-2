/// @description  game_parallax_add_sprite_layer(sprite, subimg, subspd, ox, oy, [x_tiled], [y_tiled], [x_ratio], [y_ratio], [x_separation], [y_separation], [x_speed], [y_speed]);
/// @param sprite
/// @param  subimg
/// @param  subspd
/// @param  ox
/// @param  oy
/// @param  [x_tiled]
/// @param  [y_tiled]
/// @param  [x_ratio]
/// @param  [y_ratio]
/// @param  [x_separation]
/// @param  [y_separation]
/// @param  [x_speed]
/// @param  [y_speed]
/**
 * @description Creates a new sprite-based parallax background with the given properties
 * @argument {real} sprite sprite index
 * @argument {real} subimg image index
 * @argument {real} subspd image update speed
 * @argument {real} ox absolute screen x-position
 * @argument {real} oy absolute screen y-position
 * @argument {boolean} x_tiled (Optional) whether to tile the background horizontally 
 * @argument {boolean} y_tiled (Optional) whether to tile the background vertically
 * @argument {real} x_ratio (Optional) factor to scroll the x-position against the view's x-position
 * @argument {real} y_ratio (Optional) factor to scroll the y-position against the view's y-position
 * @argument {real} x_separation (Optional) amount of horizontal space between tiled images
 * @argument {real} y_separation (Optional) amount of vertical space between tiled images
 * @argument {real} x_speed (Optional) horizontal speed to automatically scroll
 * @argument {real} y_speed (Optional) vertical speed to automatically scroll
 * @returns {real} instance index of ParallaxSpriteLayer (or undefined on error)
 */

var x_tiled = false;
var y_tiled = false;
var x_ratio = 1;
var y_ratio = 1;
var x_separation = 0;
var y_separation = 0;
var x_speed = 0;
var y_speed = 0;
switch (argument_count) {
case 13: y_speed = argument[12];
case 12: x_speed = argument[11];
case 11: y_separation = argument[10];
case 10: x_separation = argument[9];
case 9: y_ratio = argument[8];
case 8: x_ratio = argument[7];
case 7: y_tiled = argument[6];
case 6: x_tiled = argument[5];
default:
    var oy = argument[4];
    var ox = argument[3];
    var subspd = argument[2];
    var subimg = argument[1];
    var sprite = argument[0];
}

with (instance_create(0, 0, ParallaxSpriteLayer)) {
    sprite_index = sprite;
    image_index = subimg;
    frame_speed = subspd;
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
