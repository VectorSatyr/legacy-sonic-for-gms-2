function player_is_debug(argument0) {
	var phase = argument0;

	switch (phase) {
	case "start":
	    control_lock_time = 0;

	    x_speed = 0;
	    y_speed = 0;
    
	    ground_id = noone;
    
	    on_the_ground = false;

	    game_pc_redirect(id, gravity_direction);
	    game_pc_align(id, gravity_direction);

	    game_pc_camera_direct(id, game_pc_camera_state_aerial);
	    break;

	case "finish":
	    break;

	case "step":
	    // just fly around! wheeeeee!
	    var scroll_speed = 4 + (4 * keyboard_check(vk_shift));

	    if (horizontal_axis_value != 0) {
	        game_pc_position(id, x + scroll_speed * horizontal_axis_value, y);
	    }

	    if (input_up) {
	        game_pc_position(id, x, y - scroll_speed);
	    }

	    if (input_down) {
	        game_pc_position(id, x, y + scroll_speed);
	    }
	    break;
	}



}
