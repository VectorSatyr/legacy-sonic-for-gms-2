/// @description  Cleanup
for (var n = 0; n < array_length_1d(spark); ++n) {
    instance_destroy(spark[n]);
}
ds_list_destroy(offset_x);
ds_list_destroy(offset_y);

