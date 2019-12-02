var character = argument0;
var radius = argument1;

with (character) {
    wall_id = noone;
    wall_sign = 0;
    
    var ind = game_pc_arms_collision_solid(self, radius);
    if (ind != noone) {
        var distance = game_pc_calc_wall_distance(self, ind, radius);
        var sine = dsin(mask_direction);
        var cosine = dcos(mask_direction);
        if (not is_undefined(distance)) {
            game_pc_position(self, x - (cosine * distance), y + (sine * distance));
            wall_id = ind;
            wall_sign = sign(distance);
        }
    }
}
