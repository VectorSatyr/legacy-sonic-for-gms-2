/// @description  game_pc_define_animation(character, animation, index)
/// @param character
/// @param  animation
/// @param  index

var character = argument0;
var animation = argument1;
var index = argument2;

with (character) {
    animations[? animation] = index;
}
