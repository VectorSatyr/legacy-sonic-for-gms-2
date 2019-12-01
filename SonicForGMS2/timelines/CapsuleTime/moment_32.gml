/// @description  Release
var total = ds_list_size(small_animals);
if (total > 0) {
    var kind, ox;
    for (var n = 0; n < total_spaces; ++n) {
        kind = small_animals[| irandom(total - 1)];
        ox = -(sprite_width * 0.5) + separation + (separation * n);
        with (instance_create_layer(x + ox, y - 16, "objects", kind)) {
            depth = other.depth + 1;
            time_to_move = 154 - (8 * n);
        }
    }
}

/*
var total = ds_list_size(small_animals);
if (total > 0) {
    var kind;
    for (var n = 0; n < 8; ++n) {
        kind = small_animals[| irandom(total - 1)];
        with (instance_create_layer(x - 28 + (7 * n), y - 16, kind)) {
            depth = 17;
            time_to_move = 154 - (8 * n);
        }
    }
}

/* */
/*  */
