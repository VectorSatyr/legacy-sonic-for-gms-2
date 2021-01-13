/// @description Checks if the given event was registered this frame
/// @argument {string} event event name
/// @argument {real} channel (optional) input channel; if unused, polls all available channels
/// @returns {boolean} whether or not the event was registered
function game_input_event() {
	var channel = -1;
	switch (argument_count) {
	case 2: channel = argument[1];
	default:
	    var event = argument[0];
	}

	var result = false;

	with (InputSource) {
	    if (channel == -1 or self.channel == channel) {
	        if (ds_list_find_index(events, event) != -1) {
	            result = true;
	            break;
	        }
	    }
	}

	return result;



}
