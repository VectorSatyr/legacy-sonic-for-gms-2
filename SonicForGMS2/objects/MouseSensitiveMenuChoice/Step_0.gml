/// @description  Check mouse
event_inherited();
if (owner.enabled) {
    if (last_mouse_x != mouse_x or last_mouse_y != mouse_y) {
        last_mouse_x = mouse_x;
        last_mouse_y = mouse_y;
        overlap = point_in_rectangle(mouse_x, mouse_y, left, top, right, bottom);
        if (overlap) {
            event_user(0);
        }
    }
}

