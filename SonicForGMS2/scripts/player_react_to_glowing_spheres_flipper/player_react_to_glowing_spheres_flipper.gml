var ind = argument0;
var phase = argument1;

switch (phase) {
case "checking":
    if ((not on_the_ground and y_speed >= 0 and game_pc_lower_in_shape(self, ind, y_radius + 1)) or
		ground_id == ind or linked_object_id == ind) {
        game_pc_react_to(self, ind);
    }
    break;

case "entering":
	if (ground_id != ind) {
		game_pc_land(self, ind);
		var new_dir = game_pc_calc_shape_normal(self, ind, mask_direction);
		game_pc_redirect(self, new_dir);

	    // eject
	    var rotation = round_to(direction, 90);
	    var sine = dsin(rotation);
	    var cosine = dcos(rotation);
	    var x1 = x_int - (cosine * x_radius);
	    var y1 = y_int + (sine * x_radius);
		var radius = y_radius + y_snap_distance;
	    var x2, y2;
	    for (oy = 0; oy < radius; ++oy) {
	        x2 = x_int + (cosine * x_radius) + (sine * oy);
	        y2 = y_int - (sine * x_radius) + (cosine * oy);
	        if (game_shape_in_rectangle(ground_id, x1, y1, x2, y2)) {
	            game_pc_eject(self, (y_radius - oy) + 1, rotation);
	            break;
	        }
	    }
	}

	game_pc_perform(self, player_is_linked);
	x_speed = 0;
	y_speed = 0;
	spinning = true;
	linked_object_id = ind;

    game_pc_animate(self, "spin");
    image_angle = gravity_direction;
    timeline_speed = 0.2;

    game_pc_camera_direct(self, game_pc_camera_state_grounded);
    break;

case "exiting":
    break;
}