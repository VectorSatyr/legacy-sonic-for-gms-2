function game_pc_find_cliff(argument0) {
	var character = argument0;

	with (character) {
	    cliff_sign = 0;
	    var total = ds_list_size(local_solids);
	    var center = noone;
	    var left = noone;
	    var right = noone;
	    var radius = y_radius + y_snap_distance;
	    var ind;
	    for (var n = 0; n < total; ++n) {
	        ind = local_solids[| n];
	        if (instance_exists(ind)) {
	            if (ind.top_solid) {
	                if (game_pc_leg_in_shape(id, ind, 0, radius)) {
	                    center = ind;
	                }
	                if (game_pc_leg_in_shape(id, ind, -x_radius, radius)) {
	                    left = ind;
	                }
	                if (game_pc_leg_in_shape(id, ind, x_radius, radius)) {
	                    right = ind;
	                }
	            }
	        }
	    }
	    if (center == noone and (left != noone xor right != noone)) {       
	        if (left) {
	            cliff_sign = 1;
	        }
	        if (right) {
	            cliff_sign = -1;
	        }
	    }
	}



}
