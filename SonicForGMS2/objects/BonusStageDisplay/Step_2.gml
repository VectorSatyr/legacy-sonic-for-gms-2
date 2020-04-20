/// @description  Update
if (game_is_running()) {
    var blink = (game_clock_get_step() div 8) mod 2;
    if (rings_warning) {
        post_rings_header.image_index = blink;
    } else {
        post_rings_header.image_index = 0;
    }
}