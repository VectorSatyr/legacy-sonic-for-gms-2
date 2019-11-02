/// @description  game_pc_step_in_air_vertical(character, step)
/// @param character
/// @param  step
// ---------------------------------------------------------------
/*  
**  Vertical air movement step. Takes a sample of the player's
**  current speed and checks for collisions.
**
**  Arguments:
**      character   Real; player character instance index
**      step        Real; movement step in pixels
**
**  Returns:
**      N/A
*/
// ---------------------------------------------------------------
var character = argument0;
var step = argument1;
// ---------------------------------------------------------------

with (character) {
    game_pc_position(self, x + (dsin(direction) * step), y + (dcos(direction) * step));
    game_pc_refresh_local_index(self);
    game_pc_trigger_reactions(self);
    
    if (state != player_is_defeated) {
        game_pc_find_ceiling(self, y_radius);
        if (y_speed >= 0) {
            game_pc_find_ground(self, y_radius);
        }
    
        if (ground_id != noone) {
            on_the_ground = true;
            if (abs(x_speed) <= abs(y_speed) and (local_direction >= 22.5) and (local_direction <= 337.5)) {
                x_speed = y_speed * -sign(dsin(local_direction));
                if (local_direction < 45 or local_direction > 315) {
                    x_speed *= 0.5;
                }
            }
            y_speed = 0;
        }
    
        game_pc_find_wall(self, x_wall_radius);
    }
}
