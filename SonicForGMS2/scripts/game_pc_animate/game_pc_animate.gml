var reset = false;
switch (argument_count) {
case 3: reset = argument[2];
default:
    var character = argument[0];
    var name = argument[1];
}

with (character) {
    var index = ds_map_find_value(animations, name);
    if ((index != -1 and timeline_index != index) or reset) {
        current_animation = name;
        timeline_index = index;
        timeline_position = 0;
        timeline_speed = 1;
        if (game_is_running() and not timeline_running) {
            timeline_running = true;
        }
    }
}
