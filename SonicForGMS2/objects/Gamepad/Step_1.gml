/// @description  Register
event_inherited();
if (device != -1) {
    var index;

    // buttons
    for (index = ds_map_find_first(buttons);
        not is_undefined(index);
        index = ds_map_find_next(buttons, index)) {
        if (gamepad_button_check(device, index)) {
            ds_list_add(events, buttons[? index]);
        }
    }

    // positive axes
    for (index = ds_map_find_first(axes_positive);
        not is_undefined(index);
        index = ds_map_find_next(axes_positive, index)) {
        if (gamepad_axis_value(device, index) > axes_deadzone) {
            ds_list_add(events, axes_positive[? index]);
        }
    }

    // negative axes
    for (index = ds_map_find_first(axes_negative);
        not is_undefined(index);
        index = ds_map_find_next(axes_negative, index)) {
        if (gamepad_axis_value(device, index) < -axes_deadzone) {
            ds_list_add(events, axes_negative[? index]);
        }
    }
}

