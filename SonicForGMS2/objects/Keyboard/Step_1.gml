/// @description  Register
event_inherited();
for (var key = ds_map_find_first(buttons);
    not is_undefined(key);
    key = ds_map_find_next(buttons, key)) {
    if (keyboard_check(key)) {
        ds_list_add(events, buttons[? key]);
    }
}

