function player_is_lifting(argument0) {
	var phase = argument0;

	switch (phase) {
	case "start":
	    var sine = dsin(gravity_direction);
	    var cosine = dcos(gravity_direction);

	    game_pc_position(id, x + (cosine * 3 * facing_sign) + (sine * 8), y + (-sine * 3 * facing_sign) + (cosine * 8));

	    y_speed = 0;

	    game_pc_animate(id, "climb_lift");
	    image_angle = gravity_direction;

	    game_pc_camera_direct(id, game_pc_camera_state_aerial);
	    break;

	case "finish":
	    break;

	case "step":
	    switch (timeline_position) {
	    case 7:
	        var sine = dsin(gravity_direction);
	        var cosine = dcos(gravity_direction);
	        game_pc_position(id, x + (cosine * 8 * facing_sign) - (sine * 10), y + (-sine * 8 * facing_sign) - (cosine * 10));
	        break;

	    case 13:
	        var sine = dsin(gravity_direction);
	        var cosine = dcos(gravity_direction);
	        game_pc_position(id, x - (sine * 12), y - (cosine * 12));
	        break;

	    case 19:
	        return game_pc_perform(id, player_is_standing);
	        break;
	    }
	    break;
	}


}
