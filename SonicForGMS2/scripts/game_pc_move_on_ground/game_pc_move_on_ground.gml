/// @description Grounded movement code. Used for 'grounded' states such as running, rolling and spin-dashing.
/// @param {Real} character player character instance index
var character = argument0;

with (character) {
    game_pc_ride(self, ground_id);
    game_pc_memorize_reactions(self);
    game_pc_sample_x(self, game_pc_step_on_ground);
}