/// @description  Intialize
event_inherited();
bottom_solid = false;

bridge_width = bbox_right - bbox_left;
node_width = sprite_get_width(sprite_index);
total_nodes = ceil(bridge_width / node_width);
node_ratio = (total_nodes - 1) / (bridge_width - node_width);
tension_node = -1;

tension = 0;
max_tension = 12;
tension_interpolation = 0.2;

