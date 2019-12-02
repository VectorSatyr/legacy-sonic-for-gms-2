var ind = argument0;
var phase = argument1;

switch (phase) {
case "checking":
    if (spinning and game_pc_in_shape(self, ind, x_wall_radius, y_radius)) {
        game_pc_react_to(self, ind);
    }
    break;

case "entering":
    if (not on_the_ground and y_speed >= 0 and 
        game_pc_lower_in_shape(self, ind, y_radius)) {
        y_speed = -5;
        if (state == player_is_aqua_bouncing) {
            game_pc_perform(self, player_is_jumping);
            game_pc_play_sound(self, AquaBounceSound);
        }
    }

    game_pc_play_sound(self, BreakSound);

    instance_destroy(ind);
    break;

case "exiting":
    break;
}
