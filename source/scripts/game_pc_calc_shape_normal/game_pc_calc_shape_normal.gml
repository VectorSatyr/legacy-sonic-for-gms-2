function game_pc_calc_shape_normal(argument0, argument1, argument2) {
	var character = argument0;
	var shape = argument1;
	var orientation = argument2;

	var normal = orientation;

	var kind = shape.object_index;

	with (character) {
	    if (shape.auto_normal) {
	        var ang = direction;
	        var offset = (x_radius * 2) + 1;
	        var total = ds_list_size(local_solids);
	        if (total > 0 and ds_list_find_index(local_solids, shape) != -1) {
	            var sine = dsin(ang);
	            var cosine = dcos(ang);
	            var x1 = x_int - (cosine * x_radius) + (sine * y_radius);
	            var y1 = y_int + (sine * x_radius) + (cosine * y_radius);
	            var x2 = x_int + (cosine * x_radius) + (sine * y_radius);
	            var y2 = y_int - (sine * x_radius) + (cosine * y_radius);
	            var left = noone;
	            var right = noone;
	            var ind, n;

	            // project rays until they find something
	            repeat (offset) {
	                if (not left) {
	                    x1 += sine;
	                    y1 += cosine;
	                }
	                if (not right) {
	                    x2 += sine;
	                    y2 += cosine;
	                }
	                for (n = 0; n < total; ++n) {
	                    ind = local_solids[| n];
	                    if (ind.top_solid) {
	                        if (not left and game_shape_in_point(ind, x1, y1)) {
	                            left = ind; // left projection
	                        }
	                        if (not right and game_shape_in_point(ind, x2, y2)) {
	                            right = ind; // right projection
	                        }
	                    }
	                }
	                if (left and right) {
	                    // normal is the direction from left to right
	                    normal = point_direction(x1, y1, x2, y2);
	                    break;
	                }
	            }
	        }
	    } else {
	        if (game_pc_in_shape_bounds(id, shape, orientation)) {
	            if (not is_undefined(shape.normal)) {
	                // normal is pre-defined
	                normal = shape.normal;
	            } else if (object_is_family(kind, RightTriangle)) {
	                // calculate the angle of the hypotenuse
	                var x1 = shape.bbox_left;
	                var y1 = shape.bbox_bottom + 1;
	                var x2 = shape.bbox_right + 1;
	                var y2 = shape.bbox_top;
	                if (shape.image_yscale < 0) {
	                    x1 = shape.bbox_right + 1;
	                    x2 = shape.bbox_left;
	                }
	                if (shape.image_xscale < 0) {
	                    y1 = shape.bbox_top;
	                    y2 = shape.bbox_bottom + 1;
	                }
	                normal = point_direction(x1, y1, x2, y2) div 1;
	            } else {
	                var sine = dsin(orientation);
	                var cosine = dcos(orientation);
	                var ox = clamp(x_int, shape.bbox_left, shape.bbox_right + 1);
	                var oy = clamp(y_int, shape.bbox_top, shape.bbox_bottom + 1);
	                var xrad = abs(shape.sprite_width);
	                var yrad = abs(shape.sprite_height);
	                var ang;

	                if (object_is_family(kind, QuarterEllipse)) {
	                    // get the direction from the player to the ellipse centre
	                    if (xrad == yrad) {
	                        ang = point_direction(ox, oy, shape.x + shape.sprite_width, shape.y + shape.sprite_height);
	                    } else {
	                        var ox2 = ox - (shape.x + shape.sprite_width);
	                        var oy2 = oy - (shape.y + shape.sprite_height);
	                        if (xrad > yrad) { 
	                            ang = point_direction(ox2, oy2 * (xrad / yrad), 0, 0) div 1; // scale to x-radius
	                        } else {
	                            ang = point_direction(ox2 * (yrad / xrad), oy2, 0, 0) div 1; // scale to y-radius
	                        }
	                    }
	                    normal = (ang + 90) mod 360;
	                } else if (object_is_family(kind, QuarterPipe)) {
	                    // get the direction from the player to the ellipse centre
	                    if (xrad == yrad) {
	                        ang = point_direction(shape.x, shape.y, ox, oy);
	                    } else {
	                        var ox2 = ox - shape.x;
	                        var oy2 = oy - shape.y;
	                        if (xrad > yrad) {
	                            ang = point_direction(0, 0, ox2, oy2 * (xrad / yrad)) div 1;
	                        } else {
	                            ang = point_direction(0, 0, ox2 * (yrad / xrad), oy2) div 1;
	                        }
	                    }
	                    ang = (ang + 90) mod 360;

	                    // additional clamping
	                    if (sign(shape.image_xscale) == -1 and sign(shape.image_yscale) == -1) {
	                        ang = clamp(ang, 180, 270);
	                    } else if (sign(shape.image_xscale) == -1) {
	                        if (ang < 180) {
	                            ang = 0;
	                        } else {
	                            ang = clamp(ang, 270, 360);
	                        }
	                    } else if (sign(shape.image_yscale) == -1) {
	                        ang = clamp(ang, 90, 180);
	                    } else {
	                        if (ang > 180) {
	                            ang = 0;
	                        } else {
	                            ang = clamp(ang, 0, 90);
	                        }
	                    }
	                    normal = ang;
	                }
	            }
	        }
	    }
	}

	return (normal / angle_resolution) * angle_resolution;


}
