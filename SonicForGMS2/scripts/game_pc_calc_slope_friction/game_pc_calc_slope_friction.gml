// ---------------------------------------------------------------
/*  
**  Calculates the amount of force to apply in order to slide
**  down the current ground.
**
**  Arguments:
**      character   Real; player character instance index
**      force       Real; base friction value
**      threshold   Real; value to beat before applying friction
**
**  Returns:
**      Real; slope friction amount
*/
// ---------------------------------------------------------------
var character = argument0;
var force = argument1;
var threshold = argument2;
// ---------------------------------------------------------------

var value = 0;

with (character) {
    if (on_the_ground) {
        var sine = dsin(local_direction);
        if (sign(sine) != sign(x_speed) or 
            (local_direction >= 22.5 and local_direction <= 337.5)) {
            if (abs(sine * force) > threshold) {
                value = sine * force;
            }
        }
    }
}

return value;
