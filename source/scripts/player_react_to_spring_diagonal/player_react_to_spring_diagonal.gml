function player_react_to_spring_diagonal(argument0, argument1) {
	var ind = argument0;
	var phase = argument1;

	switch (phase) {
	case "checking":
	    if (game_pc_in_shape(id, ind, x_radius, y_radius)) {
	        game_pc_react_to(id, ind);
	    }
	    break;

	case "entering":
	    game_pc_perform(id, player_is_falling);

	    spinning = false;

	    var rotation_offset = angle_wrap(45 + round_to(ind.image_angle, 90) - mask_direction);
    
	    x_speed = -dsin(rotation_offset) * ind.force;
	    y_speed = -dcos(rotation_offset) * ind.force;

	    facing_sign = sign(x_speed);

	    if (ind.special_animation) {
	        game_pc_animate(id, "flip", true);
	    } else {
	        game_pc_animate(id, "rise");
	    }

	    image_angle = gravity_direction;

	    instance_perform_user_event(ind, 0); // animate

	    game_pc_play_sound(id, SpringSound);
	    break;

	case "exiting":
	    break;
	}



}
