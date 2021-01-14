/// @description Create Arrows
event_inherited();
arrows = instance_create_layer(arrows_x, arrows_y, "elements", FSMenuArrows);
arrows.visible = false;
arrows.owner = id;