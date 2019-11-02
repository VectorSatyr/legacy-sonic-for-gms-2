/// @description  Ascend
var last = ds_list_size(choices) - 1;
previous_index = index;

if (is_undefined(index)) {
    index = 0;
} else {
    ++index;
    if (index > last) {
        if (wrap) {
            index = 0;
        } else {
            index = last;
        }
    }
}

if (not is_undefined(index) and index != previous_index) {
    with (selection) {
        selected = false;
    }
    selection = choices[| index];
    with (selection) {
        selected = true;
    }
}

