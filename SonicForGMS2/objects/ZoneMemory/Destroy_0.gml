/// @description  Clean up
if (ds_exists(attributes, ds_type_map)) {
	ds_map_destroy(attributes);
}