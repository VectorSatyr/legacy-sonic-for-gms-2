/// @description Changes which save 'slot' is considered the current 'slot'
/// @argument {real} index save 'slot' to target
function game_save_select_current(argument0) {
	var index = argument0;

	with (GameSaveDirectory) {
	    self.index = index;
	}



}
