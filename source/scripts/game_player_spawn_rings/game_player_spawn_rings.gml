/// @description Spawns rings at the given coordinates equal to the amount owned by the given player
/// @param {Real} player player instance index
/// @argument {real} ox centre spawn x-position
/// @argument {real} oy centre spawn y-position
function game_player_spawn_rings(argument0, argument1, argument2) {
	var player = argument0;
	var ox = argument1;
	var oy = argument2;

	with (player) {
	    game_spawn_rings(rings, ox, oy);
	}


}
