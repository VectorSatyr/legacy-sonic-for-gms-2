/// @description Binds the given keyboard key to the given event. (Keyboard events are always registered on input channel 0)
/// @argument {string} event event name
/// @argument {real} key keyboard key (see GameMaker documentation for more info)
function game_input_event_map_key(argument0, argument1) {
	var event = argument0;
	var key = argument1;

	if (not instance_exists(Keyboard)) {
	    instance_create_layer(0, 0, "general", Keyboard);
	}

	with (Keyboard) {
	    if (event == "") {
	        ds_map_delete(buttons, key);
	    } else {
	        ds_map_replace(buttons, key, event);
	    }
	}



}
