/// @description  game_pc_camera_constraint(character, left, top, right, bottom)
/// @param character
/// @param  left
/// @param  top
/// @param  right
/// @param  bottom

var character = argument0;
var left = argument1;
var top = argument2;
var right = argument3;
var bottom = argument4;

with (character) {
    with (camera) {
        bound_left = left;
        bound_top = top
        bound_right = right;
        bound_bottom = bottom;
    }
}
