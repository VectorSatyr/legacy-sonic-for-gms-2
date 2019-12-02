/// @description Acquires the current zone act
/// @returns {real} zone act number
var act = -1;

with (GameZone) {
    act = self.act;
}

return act;
