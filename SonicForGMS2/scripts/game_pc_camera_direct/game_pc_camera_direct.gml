/// @description  game_pc_camera_direct(character, script)
/// @param character
/// @param  script

var character = argument0;
var script = argument1;

with (character) {
    if (instance_exists(camera)) {
        game_camera_direct(camera.vind, script, camera);
    }
}
