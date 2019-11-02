/// @description  Fullscreen
if (fullscreen_enabled) {
    window_set_fullscreen(!window_get_fullscreen());
    event_user(0); // resize
}

