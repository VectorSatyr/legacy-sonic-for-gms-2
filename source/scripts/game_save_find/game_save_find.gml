/// @description Returns the object index of the given save 'slot', if it exists
/// @argument {real} index save 'slot' to acquire
/// @returns {real} object index of GameSaveFile (or noone if not found)
function game_save_find(argument0) {
	var index = argument0;

	var file = noone;

	with (GameSaveFile) {
	    if (self.index == index) {
	        file = id;
	        break;
	    }
	}

	return file;



}
