/// @description  Release
var total = ds_list_size(small_animals);
if (total > 0) {
    instance_create_layer(x, y, "objects", small_animals[| irandom(total - 1)]);
}
ds_list_destroy(small_animals);

