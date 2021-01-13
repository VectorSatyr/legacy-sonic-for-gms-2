/// @description  Enqueue
if (game_is_running()) {
    if (instance_exists(source)) {
        ds_list_delete(offset_x, 0);
        ds_list_delete(offset_y, 0);
        ds_list_add(offset_x, source.x_int);
        ds_list_add(offset_y, source.y_int);
    } else {
        instance_destroy();
    }
}

