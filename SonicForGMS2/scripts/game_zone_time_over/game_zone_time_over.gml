/// @description Returns whether the current zone's timer has run out, resulting in a "Time Over"
/// @returns {boolean}
var result = false;

with (ZoneTimeLimit)
{
	result = expired;
}

return result;