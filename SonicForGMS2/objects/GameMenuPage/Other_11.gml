/// @description  Descend
var last = ds_list_size(choices) - 1;
previous_index = index;

if (is_undefined(index)) {
    index = last;
} else {
    --index;
    if (index < 0) {
        if (wrap) {
            index = last;
        } else {
            index = 0;
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

