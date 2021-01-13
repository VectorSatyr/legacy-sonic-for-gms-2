function game_pc_camera_disconnect(argument0) {
	var character = argument0;

	with (character) {
	    if (instance_exists(camera)) {
	        instance_perform_user_event(camera, 1);
	    }
	}



}
