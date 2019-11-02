/// @description  Draw
for (var n = 0; n < total_nodes; ++n) {
    draw_sprite(sprite_index, image_index, bbox_left + (n * node_width), node_oy[n]);
}

/*
var height;
for (var n = 0; n < total_nodes; ++n) {
    height = tension;
    if (n < tension_node) {
        height *= (n / tension_node);
    } else if (n > tension_node) {
        height *= ((total_nodes - 1 - n) / (total_nodes - 1 - tension_node));
    }

    draw_sprite(sprite_index, image_index, bbox_left + (n * node_width), ystart + height);
}

/* */
/*  */
