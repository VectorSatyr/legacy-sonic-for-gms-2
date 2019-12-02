/// @description Returns the number of steps since room start (affected by GameSuspension)
/// @returns {real} totals steps since room start
var total = 0;

with (GameClock) {
    total = steps;
}

return total;
