/// @description Returns the current save 'slot'
/// @returns {real} save 'slot'
var n = -1;

with (GameSaveDirectory) {
    n = index;
}

return n;
