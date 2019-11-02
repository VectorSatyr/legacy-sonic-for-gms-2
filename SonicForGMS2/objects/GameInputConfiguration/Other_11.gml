/// @description  Write
ini_open(fname);

var section = "controls_keyboard";

with (Keyboard) {
    for (var key = ds_map_find_first(buttons);
        not is_undefined(key);
        key = ds_map_find_next(buttons, key)) {
        ini_write_real(section, buttons[? key], key);
    }
}

var index;
with (Gamepad) {
    if (channel > -1) {
        section = "controls_gamepad" + string(channel);
        for (index = ds_map_find_first(buttons);
            not is_undefined(index);
            index = ds_map_find_next(buttons, index)) {
            ini_write_real(section, buttons[? index], index);
        }
        for (index = ds_map_find_first(axes_positive);
            not is_undefined(index);
            index = ds_map_find_next(axes_positive, index)) {
            ini_write_real(section, "axis_" + axes_positive[? index], index);
        }
        for (index = ds_map_find_first(axes_negative);
            not is_undefined(index);
            index = ds_map_find_next(axes_negative, index)) {
            ini_write_real(section, "axis_" + axes_negative[? index], index);
        }
    }
}

ini_close();

