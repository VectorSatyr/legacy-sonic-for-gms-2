/// @description  Animate
if (game_is_running()) {
    if (not locked) { // grow in size
        image_index += 0.0625;
        if (image_index >= 3) {
            view_offset_x = x - __view_get( e__VW.XView, vind );
            view_offset_y = y - __view_get( e__VW.YView, vind );
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

