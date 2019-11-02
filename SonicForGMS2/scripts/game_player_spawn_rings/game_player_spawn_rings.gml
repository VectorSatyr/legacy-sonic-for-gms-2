/// @description  game_player_spawn_rings(player, cx, cy)
/// @param player
/// @param  cx
/// @param  cy
/*
 * Spawns a circle(s) of dropped rings at the given coordinates
 * @param {Real} rings - number of dropped rings to create
 * @param {Real} cx - center x position from which the circle(s)
 * is formed
 * @param {Real} cy - center y position from which the circle(s)
 * is formed
 *
 * @returns - N/A
 */

// ---------------------------------------------------------------
var player = argument0;
var cx = argument1;
var cy = argument2;
// ---------------------------------------------------------------

with (GamePlayer) {
    game_spawn_rings(rings, cx, cy);
}
