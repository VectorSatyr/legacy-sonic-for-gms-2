/// @description Binds the given script to the given viewport to be run every step
/// @argument {real} vind view index
/// @argument {real} script index to run (the script should accept a view index as its only argument)
/// @argument {real} [caller] (optional) instance or object index that will call the script (if unspecified, the Camera object is the caller)
function game_camera_direct() {
	var caller = undefined;
	switch (argument_count) {
	case 3: caller = argument[2];
	default:
	    var script = argument[1];
	    var vind = argument[0];
	}

	if (view_exists(vind)) {
	    with (Camera) {
	        self.script[vind] = script;
	        if (is_undefined(caller)) {
	            self.caller[vind] = id;
	        } else {
	            self.caller[vind] = caller;
	        }
	    }
	}



}
