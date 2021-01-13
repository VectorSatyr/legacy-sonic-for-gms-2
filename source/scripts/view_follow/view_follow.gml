/// @description Moves the specified view as if view_object[vind] were set to an instance at point {ox, oy}
/// @argument {real} vind view port
/// @argument {real} ox focal point x-position
/// @argument {real} oy focal point y-position
function view_follow(argument0, argument1, argument2) {
	var vind = argument0;
	var ox = argument1;
	var oy = argument2;

	if (view_exists(vind)) {
		var cam = view_get_camera(vind);
	
	    // calculate centre point
	    var cx = camera_get_view_x(cam) + (camera_get_view_width(cam) * 0.5);
	    var cy = camera_get_view_y(cam) + (camera_get_view_height(cam) * 0.5);
    
	    // calculate offset from centre point
	    var ocx = ox - cx;
	    var ocy = oy - cy;
    
	    // limit to view border
	    var hborder = (camera_get_view_width(cam) * 0.5) - camera_get_view_border_x(cam);
	    var vborder = (camera_get_view_height(cam) * 0.5) - camera_get_view_border_y(cam);
	    ocx = max(abs(ocx) - hborder, 0) * sign(ocx);
	    ocy = max(abs(ocy) - vborder, 0) * sign(ocy);
    
	    // limit movement speed
	    if (camera_get_view_speed_x(cam) > -1 and abs(ocx) > camera_get_view_speed_x(cam)) {
	        ocx = camera_get_view_speed_x(cam) * sign(ocx);
	    }
	    if (camera_get_view_speed_y(cam) > -1 and abs(ocy) > camera_get_view_speed_y(cam)) {
	        ocy = camera_get_view_speed_y(cam) * sign(ocy);
	    }
    
	    // move the view
		if (ocx != 0 or ocy != 0) {
			var view_x = clamp(camera_get_view_x(cam) + ocx, 0, room_width - camera_get_view_width(cam));
			var view_y = clamp(camera_get_view_y(cam) + ocy, 0, room_height - camera_get_view_height(cam));
			camera_set_view_pos(cam, view_x, view_y);
		}
	}



}
