// ---------------------------------------------------------------
/*  
**  Executes the given script a number of times equal to the
**  player's current horizontal speed divided by the horizontal
**  size of the virtual mask. Ensures the player does not
**  'miss' intersections at higher speeds.
**
**  Arguments:
**      character   Real; player character instance index
**      script      Real; index of movement script (must be
**                  formatted to accept a single 'step' as an
**                  argument)
**
**  Returns:
**      N/A
*/
// ---------------------------------------------------------------
var character = argument0;
var script = argument1;
// ---------------------------------------------------------------

with (character) {
    var total_steps = 1 + floor(abs(x_speed) / x_radius);
    var step = x_speed / total_steps;
    repeat (total_steps) {
        script_execute(script, character, step);
    }
}
