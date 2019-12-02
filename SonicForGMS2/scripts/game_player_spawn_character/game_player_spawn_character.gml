var player = argument0;
var ox = argument1;
var oy = argument2;

with (player) {
    if (object_exists(character_id)) {
        instance_destroy(character);
        character = instance_create_depth(ox, oy, index, character_id);
        character.owner = id;
        character.camera.vind = index;
        game_pc_camera_connect(character);
        with (DevVisualization) {
            other.character.mask_visible = visible;
        }
    }
}
