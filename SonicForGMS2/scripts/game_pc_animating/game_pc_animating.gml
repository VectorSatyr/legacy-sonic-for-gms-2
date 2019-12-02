var character = argument0;
var animation = argument1;

var result = false;

with (character) {
    if (current_animation == animation) {
        result = true;
    }
}

return result;
