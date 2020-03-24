/// @description  Clean up
if (ds_exists(pattern_list, ds_type_list)) {
	ds_list_destroy(pattern_list);
}