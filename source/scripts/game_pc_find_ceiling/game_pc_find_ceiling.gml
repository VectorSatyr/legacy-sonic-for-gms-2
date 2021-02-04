function game_pc_find_ceiling(argument0, argument1) {
	var character = argument0;
	var radius = argument1;

	with (character) {
	    ceiling_id = noone;

	    var ceiling = noone;
	    var ind;
	    for (var oy = 0; oy < radius; ++oy) {
	        ind = game_pc_upper_collision_solid(id, oy);
	        if (ind != noone) {
	            game_pc_eject(id, -((y_radius - oy) + 1), mask_direction);
	            ceiling = ind;
	            break;
	        }
	    }

	    if (ceiling != noone) {
	        var new_mask_dir = angle_wrap(mask_direction + 180);
	        var new_dir = game_pc_calc_shape_normal(id, ceiling, new_mask_dir);
	        var diff = abs(angle_difference(new_mask_dir, new_dir));
	        if (ceiling.sticky and y_speed <= ceiling_land_threshold and
	            between(diff, 45, 90)) {
	            game_pc_land(id, ceiling);
	            game_pc_redirect(id, new_dir);
	            game_pc_align(id, new_mask_dir);
	        } else {
	            var dir = new_dir - gravity_direction;
	            game_pc_translate_speed(id, (dcos(dir) * x_speed) - (dsin(dir) * y_speed), dir);
	            ceiling_id = ceiling;
	        }
	    }
	}



}
