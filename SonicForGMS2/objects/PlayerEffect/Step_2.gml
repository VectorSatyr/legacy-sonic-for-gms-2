/// @description  Attach
if (game_is_running()) {
    if (instance_exists(source)) {
        x = source.x_int;
        y = source.y_int;
		linked_object_id = source.linked_object_id;
    } else {
        instance_destroy();
    }
}