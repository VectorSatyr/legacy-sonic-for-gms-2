/// @description  Update
if (enabled and not ds_list_empty(choices) and alarm[0] <= 0) {
    if (game_input_event_pressed(event_select)) {
        if (selection != noone) {
            show_debug_message(name + " [" + string(index) + "] : " + selection.name);
            event_user(2);
        }
    } else if (game_input_event_pressed(event_ascend)) {
        event_user(0);
    } else if (game_input_event_pressed(event_descend)) {
        event_user(1);
    }
}

