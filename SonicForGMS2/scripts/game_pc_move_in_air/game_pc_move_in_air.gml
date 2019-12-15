/// @description Aerial movement code. Used for airborne states such as jumping and falling.
/// @param {Real} character player character instance index
var character = argument0;

with (character) {
    game_pc_memorize_reactions(self);
    game_pc_sample_x(self, game_pc_step_in_air_horizontal);
    game_pc_memorize_reactions(self);
    game_pc_sample_y(self, game_pc_step_in_air_vertical);
}
