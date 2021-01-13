/// @description Checks if there are any qualifying activities during which other room objects should cease functioning
/// @returns {boolean}
function game_is_running() {
	var result = true;

	if (instance_exists(GameSuspension)) {
	    result = false;
	}

	return result;



}
