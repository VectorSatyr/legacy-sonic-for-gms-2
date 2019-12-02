var character = argument0;

with (character) {
    if (instance_exists(camera)) {
        instance_perform_user_event(camera, 1);
    }
}
