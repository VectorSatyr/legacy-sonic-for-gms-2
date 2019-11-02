/// @description  game_pc_animating(character, animation)
/// @param character
/// @param  animation

var character = argument0;
var animation = argument1;

var result = false;

with (character) {
    if (current_animation == animation) {
        result = true;
    }
}

return result;
