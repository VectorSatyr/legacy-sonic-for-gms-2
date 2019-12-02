var ind = argument0;
var phase = argument1;

switch (phase) {
case "checking":
    if (state == player_is_gliding and game_pc_arms_in_shape(self, ind, x_wall_radius)) { //wall_id == ind) { //
        game_pc_react_to(self, ind);
    }
    break;

case "entering":
    game_pc_perform(self, player_is_climbing);
    climb_id = ind;
    game_pc_play_sound(self, ClaspingSound);
    break;

case "exiting":
    break;
}
