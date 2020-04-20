/// @description Acquires the current zone act
/// @returns {real} zone act number
var act = -1;

with (ZoneConfiguration) {
    act = self.act;
}

return act;