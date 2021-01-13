/// @description  Draw
for (var n = 0; n < total_nodes; ++n) {
    draw_sprite(sprite_index, image_index, bbox_left + (n * node_width), node_oy[n]);
}

