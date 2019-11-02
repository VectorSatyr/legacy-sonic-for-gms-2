/// @description  game_pc_arms_in_shape(character, shape, radius)
/// @param character
/// @param  shape
/// @param  radius
// ---------------------------------------------------------------
/*  
**  Returns whether the mask of the given instance intersects
**  the arms (horizontal sensor) of the player's virtual mask.
**
**  Arguments:
**      character   Real; player character instance index
**      shape       Real; terrain shape instance index
**      radius      Real; distance in pixels to extend the mask
**                  (extends horizontally at BOTH ends)
**
**  Returns:
**      Real; 0: no intersect; 1: completely inside;
**      2: overlapping
*/
// ---------------------------------------------------------------
var character = argument0;
var shape = argument1;
var radius = argument2;
// ---------------------------------------------------------------

var result = 0;

with (character) {
    var sine = dsin(mask_direction);
    var cosine = dcos(mask_direction);
    var x1 = x_int - (cosine * radius);
    var y1 = y_int + (sine * radius);
    var x2 = x_int + (cosine * radius);
    var y2 = y_int - (sine * radius);
    result = game_shape_in_line(shape, x1, y1, x2, y2);
}

return result;
