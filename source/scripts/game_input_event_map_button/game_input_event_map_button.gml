/// @description Binds the given gamepad button to the given event so that it registers to the given channel
/// @argument {real} channel input channel
/// @argument {string} event event name
/// @argument {real} button gamepad button (see GameMaker documentation for more info)
function game_input_event_map_button(argument0, argument1, argument2) {
	var channel = argument0;
	var event = argument1;
	var button = argument2;

	var exists = false;

	with (Gamepad) {
	    if (self.channel == channel) {
	        exists = true;
	        if (event == "") {
	            ds_map_delete(buttons, button);
	        } else {
	            ds_map_replace(buttons, button, event);
	        }
	    }
	}

	if (not exists and event != "") {
	    with (instance_create_layer(0, 0, "general", Gamepad)) {
	        self.channel = channel;
	        ds_map_replace(buttons, button, event);
	    }
	}



}
