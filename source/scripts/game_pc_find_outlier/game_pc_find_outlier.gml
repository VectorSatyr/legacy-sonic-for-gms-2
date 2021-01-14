function game_pc_find_outlier(argument0) {
	var character = argument0;

	with (character) {
	    var diff = angle_difference(direction, mask_direction);
	    if (abs(diff) > 45 and abs(diff) < 90) {
	        if (game_pc_in_shape(id, ground_id, y_radius + 1, x_radius)) {
	            var new_mask_dir = angle_wrap(mask_direction + 90 * sign(diff));
	            var new_dir = game_pc_calc_shape_normal(id, ground_id, new_mask_dir);
	            var new_diff = angle_difference(new_dir, mask_direction);
	            if ((sign(diff) == sign(new_diff)) and abs(new_diff) > 45 and abs(new_diff) < 90) {
	                game_pc_redirect(id, new_dir);
	                game_pc_align(id, new_mask_dir);
	            }
	        }
	    }
	}



}
