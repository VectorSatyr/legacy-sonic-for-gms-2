/// @description Initialize
particles = ds_map_create();
system = part_system_create_layer(layer, true);
part_system_automatic_update(system, false);
part_system_automatic_draw(system, false);