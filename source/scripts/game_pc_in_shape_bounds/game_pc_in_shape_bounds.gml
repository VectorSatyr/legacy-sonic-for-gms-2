function game_pc_in_shape_bounds(argument0, argument1, argument2) {
	var character = argument0;
	var shape = argument1;
	var orientation = argument2;

	var result = true;

	with (character) {
	    if ((orientation == 0 and shape.image_yscale < 0) or 
	        (orientation == 90 and shape.image_xscale < 0) or
	        (orientation == 180 and shape.image_yscale > 0) or 
	        (orientation == 270 and shape.image_xscale > 0)) {
	        result = false;
	    } else if (orientation mod 180 == 0) {
	        if ((shape.image_xscale < 0 and x_int - x_radius < shape.bbox_left) or 
	            (shape.image_xscale > 0 and x_int + x_radius > shape.bbox_right + 1)) {
	            result = false;
	        }
	    } else {
	        if ((shape.image_yscale < 0 and y_int - x_radius < shape.bbox_top) or
	            (shape.image_yscale > 0 and y_int + x_radius > shape.bbox_bottom + 1)) {
	            result = false;
	        }
	    }
	}

	return result;



}
