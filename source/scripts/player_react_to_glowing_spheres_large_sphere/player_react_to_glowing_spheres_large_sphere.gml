function player_react_to_glowing_spheres_large_sphere(argument0, argument1) {
	var ind = argument0;
	var phase = argument1;

	switch (phase) {
	case "checking":
	    if (game_pc_in_shape(id, ind, x_radius, y_radius) or linked_object_id == ind) {
	        game_pc_react_to(id, ind);
	    }
	    break;

	case "entering":
		game_pc_perform(id, player_is_linked);
		x_speed = 0;
		y_speed = 0;
		spinning = true;
		linked_object_id = ind;

	    game_pc_animate(id, "spin");
	    image_angle = gravity_direction;
	    timeline_speed = 0.2;

	    game_pc_camera_direct(id, game_pc_camera_state_aerial);

		var index = owner.index;
		ind.angle[index] = point_direction(ind.x, ind.y, x_int, y_int);
		ind.z_pos[index] = (point_direction(0, abs(ind.y - y_int), abs(ind.x - x_int), 0) + 45) mod 360;
	    break;

	case "exiting":
		depth = owner.index;
	    break;
	}


}
