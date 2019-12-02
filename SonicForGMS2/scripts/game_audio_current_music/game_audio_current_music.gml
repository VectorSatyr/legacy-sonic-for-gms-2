/// @description Returns the latest music in the 'queue'
/// @returns {real} instance index of GameMusic
var current = noone;

with (GameMusic) {
    if (next == noone) {
        current = id;
    }
}

return current;
