/// @description Returns the number of steps since room start (affected by GameSuspension)
/// @returns {real} totals steps since room start
function game_clock_get_step() {
	var total = 0;

	with (GameClock) {
	    total = steps;
	}

	return total;



}
