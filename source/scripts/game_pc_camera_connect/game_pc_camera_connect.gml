function game_pc_camera_connect(argument0) {
	var character = argument0;

	with (character) {
	    if (instance_exists(camera)) {
	        instance_perform_user_event(camera, 0);
	    }
	}



}
