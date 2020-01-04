var character = argument0;
var radius = argument1;

with (character) {
    ground_id = noone;

    var ind, new_dir;
    for (var oy = 0; oy < radius; ++oy) {
        ind = game_pc_lower_collision_solid(self, oy);
        if (ind != noone) {
            new_dir = game_pc_calc_shape_normal(self, ind, mask_direction);
            if (abs(angle_difference(new_dir, direction)) <= 45 or not on_the_ground) {
                game_pc_land(self, ind);
                game_pc_redirect(self, new_dir);
                game_pc_find_outlier(self);
                break;
            }
        }
    }

    if (ground_id != noone) {
        // eject
        var rotation = round_to(direction, 90);
        var sine = dsin(rotation);
        var cosine = dcos(rotation);
        var x1 = x_int - (cosine * x_radius);
        var y1 = y_int + (sine * x_radius);
        var x2, y2;
        for (oy = 0; oy < radius; ++oy) {
            x2 = x_int + (cosine * x_radius) + (sine * oy);
            y2 = y_int - (sine * x_radius) + (cosine * oy);
            if (game_shape_in_rectangle(ground_id, x1, y1, x2, y2)) {
                game_pc_eject(self, (y_radius - oy) + 1, rotation);
                break;
            }
        }
    }
}
