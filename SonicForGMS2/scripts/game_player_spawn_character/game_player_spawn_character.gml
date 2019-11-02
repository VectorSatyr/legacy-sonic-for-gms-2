/// @description  game_player_spawn_character(player, ox, oy)
/// @param player
/// @param  ox
/// @param  oy

var player = argument0;
var ox = argument1;
var oy = argument2;

with (player) {
    if (object_exists(character_id)) {
        instance_destroy(character);
        character = instance_create(ox, oy, character_id);
        character.owner = id;
        character.camera.vind = index;
        game_pc_camera_connect(character);
        with (DevVisualization) {
            other.character.mask_visible = visible;
        }
    }
}
