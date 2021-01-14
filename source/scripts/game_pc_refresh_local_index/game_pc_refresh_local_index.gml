function game_pc_refresh_local_index(argument0) {
	var character = argument0;

	with (character) {
	    ds_list_clear(local_instances);
	    ds_list_clear(local_solids);

	    var xrad = x_wall_radius * 2;
	    var yrad = y_radius + y_snap_distance;

	    var size = instance_number(Deactivable);
	    var ind;
	    for (var n = 0; n < size; ++n) {
	        ind = instance_find(Deactivable, n);
	        if (game_pc_in_shape(id, ind, xrad, yrad)) {
	            ds_list_add(local_instances, ind);
	            if (object_is_family(ind.object_index, Solid)) {
	                if ((depth_mask & ind.depth_mask) and (ind.top_solid or ind.bottom_solid)) {
	                    ds_list_add(local_solids, ind);
	                }
	            }
	        }
	    }
	}



}
