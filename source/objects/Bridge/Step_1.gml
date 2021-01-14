/// @description  Elevate
if (game_is_running()) {
    var mean_node = -1;
    var node;

    with (PlayableCharacter) {
        if (ground_id == other.id) {
            node = clamp(floor((x_int - other.bbox_left) * other.node_ratio), 0, other.total_nodes - 1);
            if (mean_node == -1) {
                mean_node = node;
            } else {
                mean_node = (mean_node + node) div 2;
            }
        }
    }

    var base_tension = 0;

    if (mean_node != -1) {
        tension_node = mean_node;
        var ratio = clamp(tension_node / (total_nodes - 1), 0, 1);
        base_tension = max_tension * dsin(ratio * 180);
    }

    tension = floor(lerp(tension, base_tension, tension_interpolation));

    y = ystart + tension;
}

