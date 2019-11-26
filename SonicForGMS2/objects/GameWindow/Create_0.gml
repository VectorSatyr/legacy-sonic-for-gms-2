/// @description  Initialize
image_speed = 0;

width = display_get_width();
height = display_get_height();
fullscreen_enabled = false;
ports = 1;

switch (os_type) {
case os_windows:
case os_macosx:
    if (os_browser == browser_not_a_browser) {
        width = room_width;
        height = room_height;
        fullscreen_enabled = true;
    }
    break;
}

gpu_set_alphatestenable(true);
gpu_set_alphatestref(0);
application_surface_draw_enable(false);

event_user(0); // resize

