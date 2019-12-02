// ---------------------------------------------------------------
/*  
**  Set the given object index as the terrain the given
**  player character is standing on.
**
**  Arguments:
**      character   Real; player character instance index
**      ind         Real; other instance index
**
**  Returns:
**      N/A
*/
// ---------------------------------------------------------------
var character = argument0;
var ind = argument1;
// ---------------------------------------------------------------

with (character) {
    if (ground_id != ind) {
        ground_id = ind;
        on_the_ground = true;
    }
}
