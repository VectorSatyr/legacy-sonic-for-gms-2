/// @description Changes the player's position in the room while staying within established boundaries.
/// @param {Real} character player character instance index
/// @param {Real} nx room x-position
/// @param {Real} ny room y-position
function game_pc_position(argument0, argument1, argument2) {
	var character = argument0;
	var nx = argument1;
	var ny = argument2;

	with (character) {
	    if (x != nx or y != ny) {
	        if (x != nx) {
	            x = nx;
	            x_int = floor(x);
	        }
	        if (y != ny) {
	            y = ny;
	            y_int = floor(y);
	        }
    
	        if ((mask_direction mod 180) != 0) {
	            var sx1 = x_int - y_radius;
	            var sy1 = y_int - x_wall_radius;
	            var sx2 = x_int + y_radius;
	            var sy2 = y_int + x_wall_radius;
	        }
	        else {
	            var sx1 = x_int - x_wall_radius;
	            var sy1 = y_int - y_radius;
	            var sx2 = x_int + x_wall_radius;
	            var sy2 = y_int + y_radius;
	        }
        
	        var mask_left = int64(1);
	        var mask_top = int64(2);
	        var mask_right = int64(4);
	        var mask_bottom = int64(8);
        
	        var dx1 = bound_left;
	        var dy1 = bound_top;
	        var dx2 = bound_right;
	        var dy2 = bound_bottom;
        
	        bound_mask = int64(0);
        
	        if (rectangle_in_rectangle(sx1, sy1, sx2, sy2, dx1, dy1, dx2, dy2) != 1) {
	            if (sx1 < dx1) {
	                bound_mask |= mask_left;
	            }
	            if (sy1 < dy1) {
	                bound_mask |= mask_top;
	            }
	            if (sx2 > dx2) {
	                bound_mask |= mask_right;
	            }
	            if (sy2 > dy2) {
	                bound_mask |= mask_bottom;
	            }
	        }
    
	        var mask = bound_mask & ~bound_ignore_mask;
        
	        switch (gravity_direction) {
	        case 0:
	            if (mask & mask_left) {
	                x = bound_left + x_wall_radius;
	                x_int = floor(x);
	                if (x_speed < 0) {
	                    x_speed = 0;
	                }
	            }
	            if (mask & mask_top) {
	                y = bound_top + y_radius;
	                y_int = floor(y);
	                if (y_speed < 0) {
	                    y_speed = 0;
	                }
	            }
	            if (mask & mask_right) {
	                x = bound_right - x_wall_radius;
	                x_int = floor(x);
	                if (x_speed > 0) {
	                    x_speed = 0;
	                }
	            }
	            if (mask & mask_bottom) {
	                y = bound_bottom - y_radius;
	                y_int = floor(y);
	                if (y_speed > 0) {
	                    y_speed = 0;
	                }
	            }
	            break;
        
	        case 90:
	            if (mask & mask_left) {
	                x = bound_left + y_radius;
	                x_int = bound_left + y_radius;
	                if (y_speed < 0) {
	                    y_speed = 0;
	                }
	            }
	            if (mask & mask_top) {
	                y = bound_top + x_wall_radius;
	                y_int = floor(y);
	                if (x_speed > 0) {
	                    x_speed = 0;
	                }
	            }
	            if (mask & mask_right) {
	                x = bound_right - y_radius;
	                x_int = floor(x);
	                if (y_speed > 0) {
	                    y_speed = 0;
	                }
	            }
	            if (mask & mask_bottom) {
	                y = bound_bottom - x_wall_radius;
	                y_int = floor(y);
	                if (x_speed < 0) {
	                    x_speed = 0;
	                }
	            }
	            break;
        
	        case 180:
	            if (mask & mask_left) {
	                x = bound_left + x_wall_radius;
	                x_int = floor(x);
	                if (x_speed > 0) {
	                    x_speed = 0;
	                }
	            }
	            if (mask & mask_top) {
	                y = bound_top + y_radius;
	                y_int = floor(y);
	                if (y_speed > 0) {
	                    y_speed = 0;
	                }
	            }
	            if (mask & mask_right) {
	                x = bound_right - x_wall_radius;
	                x_int = floor(x);
	                if (x_speed < 0) {
	                    x_speed = 0;
	                }
	            }
	            if (mask & mask_bottom) {
	                y = bound_bottom - y_radius;
	                y_int = floor(y);
	                if (y_speed < 0) {
	                    y_speed = 0;
	                }
	            }
	            break;
        
	        case 270:
	            if (mask & mask_left) {
	                x = bound_left + y_radius;
	                x_int = floor(x);
	                if (y_speed > 0) {
	                    y_speed = 0;
	                }
	            }
	            if (mask & mask_top) {
	                y = bound_top + x_wall_radius;
	                y_int = floor(y);
	                if (x_speed < 0) {
	                    x_speed = 0;
	                }
	            }
	            if (mask & mask_right) {
	                x = bound_right - y_radius;
	                x_int = floor(x);
	                if (y_speed < 0) {
	                    y_speed = 0;
	                }
	            }
	            if (mask & mask_bottom) {
	                y = bound_bottom - x_wall_radius;
	                y_int = floor(y);
	                if (x_speed > 0) {
	                    x_speed = 0;
	                }
	            }
	            break;
	        }
    
	        audio_emitter_position(audio_emitter, x_int, y_int, 0);
    
	        if (owner.index == 0) {
	            audio_listener_position(x_int, y_int, 0);
	        }
    
	        with (camera) {
	            x = other.x_int;
	            y = other.y_int;
	        }
	    }
	}



}
