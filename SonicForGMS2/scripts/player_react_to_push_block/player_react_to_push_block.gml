var ind = argument0;
var phase = argument1;

switch (phase) {
case "checking":
    if (on_the_ground and game_pc_arms_in_shape(self, ind, x_wall_radius) and ind.y - ind.yprevious == 0) {
        var distance = game_pc_calc_wall_distance(self, ind, x_wall_radius);
        if (sign(x_speed) == sign(distance)) {
            game_pc_react_to(self, ind);
            wall_id = ind;
            wall_sign = sign(distance);
            var sine = dsin(mask_direction);
            var cosine = dcos(mask_direction);
            var ox = cosine * distance;
            var oy = -sine * distance;
            with (ind) {
                if (not place_meeting(x + ox, y + oy, Solid)) {
                    x += ox;
                    y += oy;
                }
            }
            var new_distance = game_pc_calc_wall_distance(self, ind, x_wall_radius);
            game_pc_position(self, x - (cosine * new_distance), y + (sine * new_distance));
            //game_pc_position(self, x + ox, y + oy);
            x_speed = 0;
        }
    }
    break;

case "entering":
    game_pc_perform(self, player_is_pushing);
    break;

case "exiting":
    break;
}
