/// @description  Animate
if (game_is_running()) {
    if (not locked) { // grow in size
        image_index += 0.0625;
        if (image_index >= 3) {
			var cam = view_get_camera(vind);
            view_offset_x = x - camera_get_view_x(cam);
            view_offset_y = y - camera_get_view_y(cam);
            wait_time = 60;
            locked = true;
        }
    } else { // disappear
        --wait_time;
        if (wait_time < 48) {
            image_alpha = 1 - ((wait_time div 8) mod 2);
        }
        if (wait_time <= 0) {
            instance_destroy();
        }
    }    
}

