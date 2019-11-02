/// @description  Update
if (game_is_running()) {
    var blink = (game_clock_get_step() div 8) mod 2;

    with (ZoneTimeLimit) {
        var minutes = string(count div 3600);
        var seconds = string_replace_all(string_format((count div 60) mod 60, 2, 0), " ", "0");
        other.post_time.label = minutes + " " + seconds;
        if (limit - count < 3600) {
            other.time_warning = true;
        }
    }

    if (time_warning) {
        post_time_header.image_index = blink;
    } else {
        post_time_header.image_index = 0;
    }

    if (rings_warning) {
        post_rings_header.image_index = blink;
    } else {
        post_rings_header.image_index = 0;
    }
}

