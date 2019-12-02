// ---------------------------------------------------------------
/*  
**  Redirects the player's movement. (Does nothing if the player
**  is already moving at the given angle)
**
**  Arguments:
**      character   Real; player character instance index
**      angle       Real; direction to move
**
**  Returns:
**      N/A
*/
// ---------------------------------------------------------------
var character = argument0;
var angle = argument1;
// ---------------------------------------------------------------

with (character) {
    if (direction != angle) {
        direction = angle;
        local_direction = angle_wrap(angle - gravity_direction);
    }
}
