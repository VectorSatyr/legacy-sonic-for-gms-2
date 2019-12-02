// ---------------------------------------------------------------
/*  
**  Redirects the player's gravity. (Does nothing if the player
**  is already moving at the given angle)
**
**  Arguments:
**      character   Real; player character instance index
**      angle       Real; direction of gravity to move
**
**  Returns:
**      N/A
*/
// ---------------------------------------------------------------
var character = argument0;
var angle = argument1;
// ---------------------------------------------------------------

with (character) {
    if (gravity_direction != angle) {
        gravity_direction = angle;
        game_pc_redirect(self, gravity_direction);
        game_pc_align(self, gravity_direction);
    }
}
