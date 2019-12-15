/// @description Redirects the player's gravity. (Does nothing if the player is already moving at the given angle)
/// @param {Real} character player character instance index
/// @param {Real} angle direction of gravity to move
var character = argument0;
var angle = argument1;

with (character) {
    if (gravity_direction != angle) {
        gravity_direction = angle;
        game_pc_redirect(self, gravity_direction);
        game_pc_align(self, gravity_direction);
    }
}
