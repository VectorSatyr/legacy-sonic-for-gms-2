/// @description  Animate
event_inherited();
cycle_time = (game_clock_get_step() / room_speed) * cycle_speed;

// visibility
visible = false;
for (var n = 0; n < MAX_VIEW_COUNT; ++n) {
    view_render[n] = false;
    if (view_get_visible( n )) {
        with (Water) {
            if (rectangle_in_view(bbox_left, bbox_top, bbox_right, bbox_bottom, n)) {
                other.view_render[n] = true;
                other.visible = true;
                break;
            }
        }
    }
}

