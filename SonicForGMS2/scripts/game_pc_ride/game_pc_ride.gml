/// @description  game_pc_ride(character, ind)
/// @param character
/// @param  ind
// ---------------------------------------------------------------
/*  
**  Adjust's the player character's position based on the given
**  instance's built-in movement variables.
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
    if (instance_exists(ind)) {
        var ox = 0;
        var oy = 0;
        if (ind.hspeed != 0) {
            ox = ind.hspeed;
        } else if (ind.x - ind.xprevious != 0) {
            ox = (ind.x - ind.xprevious);
        }
        if (ind.vspeed != 0) {
            oy = ind.vspeed;
        }
        else if (ind.y - ind.yprevious != 0) {
            oy = (ind.y - ind.yprevious);
        }
        game_pc_position(self, x + ox, y + oy);
    }
}
