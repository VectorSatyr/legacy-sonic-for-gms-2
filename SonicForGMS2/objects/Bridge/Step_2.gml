/// @description  Bend
var height;
for (var n = 0; n < total_nodes; ++n) {
    height = tension;
    if (n < tension_node) {
        height *= (n / tension_node);
    } else if (n > tension_node) {
        height *= ((total_nodes - 1 - n) / (total_nodes - 1 - tension_node));
    }
    node_oy[n] = ystart + height;
}

