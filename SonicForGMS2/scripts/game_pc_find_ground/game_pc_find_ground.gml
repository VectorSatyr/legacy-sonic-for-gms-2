/// @description  game_pc_find_ground(character, radius)
/// @param character
/// @param  radius

var character = argument0;
var radius = argument1;

with (character) {
    ground_id = noone;

    var ind;
    for (var oy = 0; oy < radius; ++oy) {
        ind = game_pc_lower_collision_solid(self, oy);
        if (ind != noone) {
            game_pc_land(self, ind);
            game_pc_eject(self, (y_radius - oy) + 1, mask_direction);
            game_pc_redirect(self, game_pc_calc_shape_normal(self, ind, mask_direction));
            game_pc_find_outlier(self);
            break;
        }
    }
}
