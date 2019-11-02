/// @description  Select
if (overlap and owner.enabled and owner.alarm[0] <= 0) {
    with (owner) {
        show_debug_message(name + " [" + string(index) + "] : " + selection.name);
        event_user(2);
    }
}

