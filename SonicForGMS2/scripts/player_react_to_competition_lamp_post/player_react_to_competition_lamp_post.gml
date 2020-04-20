var ind = argument0;
var phase = argument1;

switch (phase) {
case "checking":
    if (not ind.activated and game_pc_arms_in_shape(self, ind, x_wall_radius)) {
        game_pc_react_to(self, ind);
    }
    break;

case "entering":
	// TODO: create competition check point for respawning
    instance_perform_user_event(ind, 0);
    game_pc_play_sound(self, LampPostSound);
    break;

case "exiting":
    break;
}