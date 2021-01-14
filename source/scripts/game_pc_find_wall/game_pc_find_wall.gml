function game_pc_find_wall(argument0, argument1) {
	var character = argument0;
	var radius = argument1;

	with (character) {
	    wall_id = noone;
	    wall_sign = 0;
    
	    var ind = game_pc_arms_collision_solid(id, radius);
	    if (ind != noone) {
	        var distance = game_pc_calc_wall_distance(id, ind, radius);
	        var sine = dsin(mask_direction);
	        var cosine = dcos(mask_direction);
	        if (not is_undefined(distance)) {
	            game_pc_position(id, x - (cosine * distance), y + (sine * distance));
	            wall_id = ind;
	            wall_sign = sign(distance);
	        }
	    }
	}



}
