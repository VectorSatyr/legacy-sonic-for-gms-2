/// @description Returns whether the current zone's timer has run out, resulting in a "Time Over"
/// @returns {boolean}
function game_zone_time_over() {
	var result = false;

	with (ZoneTimeLimit)
	{
		result = expired;
	}

	return result;


}
