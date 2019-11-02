/// @description  game_pc_camera_connect(character)
/// @param character

var character = argument0;

with (character) {
    if (instance_exists(camera)) {
        instance_perform_user_event(camera, 0);
    }
}
