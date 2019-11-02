/// @description  Select
if (owner.enabled and owner.alarm[0] <= 0) {
    if (shortcut != "") {
        if (game_input_event_pressed(shortcut)) {
            event_user(0);
            with (owner) {
                show_debug_message(name + " [" + string(index) + "] : " + selection.name);
                event_user(2);
            }
        }
    }
}

