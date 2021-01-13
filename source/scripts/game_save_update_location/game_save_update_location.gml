/// @description Updates the starting location on the current save 'slot'
/// @argument {real} location (Optional) room index; if not specified, the current room is used
/// @argument {real} index (Optional) save 'slot' to update
function game_save_update_location() {
	var index = -1;
	var location = room;
	switch (argument_count) {
	case 2: index = argument[1];
	case 1: location = argument[0];
	}

	var file = game_save_find(index);
	with (file) {
	    self.location = location;
	}



}
