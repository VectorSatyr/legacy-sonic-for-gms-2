/// @description Spawns rings at the given coordinates equal to the amount owned by the given player
/// @param {Real} player player instance index
/// @argument {real} ox centre spawn x-position
/// @argument {real} oy centre spawn y-position
var player = argument0;
var ox = argument1;
var oy = argument2;

with (player) {
    game_spawn_rings(rings, ox, oy);
}