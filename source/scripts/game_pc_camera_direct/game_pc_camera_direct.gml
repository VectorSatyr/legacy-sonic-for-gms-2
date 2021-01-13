function game_pc_camera_direct(argument0, argument1) {
	var character = argument0;
	var script = argument1;

	with (character) {
	    if (instance_exists(camera)) {
	        game_camera_direct(camera.vind, script, camera);
	    }
	}



}
