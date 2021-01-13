/// @description Returns the current save 'slot'
/// @returns {real} save 'slot'
function game_save_current() {
	var n = -1;

	with (GameSaveDirectory) {
	    n = index;
	}

	return n;



}
