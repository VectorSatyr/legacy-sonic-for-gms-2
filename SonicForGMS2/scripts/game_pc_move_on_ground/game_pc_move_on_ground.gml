/// @description  game_pc_move_on_ground(character)
/// @param character
// ---------------------------------------------------------------
/*  
**  Grounded movement code. Used for 'grounded' states such as
**  running, rolling and spin-dashing.
**
**  Arguments:
**      character   Real; player character instance index
**
**  Returns:
**      N/A
*/
// ---------------------------------------------------------------
var character = argument0;
// ---------------------------------------------------------------

with (character) {
    /*
    if (ground_id != noone) {
        if (instance_exists(ground_id)) {
            game_pc_ride(self, ground_id);
        } else {
            ground_id = noone;
            on_the_ground = false;
        }
    }
    */
    
    game_pc_ride(self, ground_id);
    game_pc_memorize_reactions(self);
    game_pc_sample_x(self, game_pc_step_on_ground);
}
