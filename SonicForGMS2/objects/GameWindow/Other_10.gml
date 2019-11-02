/// @description  Resize
if (not window_get_fullscreen()) {
    if (window_get_width() != width or window_get_height() != height) {
        window_set_size(width, height);
        window_center();
        event_user(1); // reframe
    }
}

