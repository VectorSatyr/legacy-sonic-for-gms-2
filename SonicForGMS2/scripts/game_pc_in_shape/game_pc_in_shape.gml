// ---------------------------------------------------------------
/*  
**  Returns whether the player's virtual mask intersects the
**  given terrain shape.
**
**  Arguments:
**      character   Real; character instance index
**      shape       Real; terrain shape instance index
**      xrad        Real; distance in pixels to extend the mask
**                  (extends horizontally at BOTH ends)
**      yrad        Real; distance in pixels to extend the mask
**                  (extends vertically at BOTH ends)
**
**  Returns:
**      Real; 0: no intersect; 1: completely inside;
**      2: overlapping
*/
// ---------------------------------------------------------------
var character = argument0;
var shape = argument1;
var xrad = argument2;
var yrad = argument3;
// ---------------------------------------------------------------

var result = 0;

with (character) {
    if ((mask_direction mod 180) != 0) {
        var x1 = x_int - yrad;
        var y1 = y_int - xrad;
        var x2 = x_int + yrad;
        var y2 = y_int + xrad;
    } else {
        var x1 = x_int - xrad;
        var y1 = y_int - yrad;
        var x2 = x_int + xrad;
        var y2 = y_int + yrad;
    }
    result = game_shape_in_rectangle(shape, x1, y1, x2, y2);
}

return result;
