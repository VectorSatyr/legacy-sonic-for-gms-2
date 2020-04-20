var ind = argument0;
var phase = argument1;

switch (phase) {
case "checking":
    if (game_pc_in_shape(self, ind, x_radius, y_radius)) {
        game_pc_react_to(self, ind);
    }
    break;

case "entering":
	ind.player = self;
	instance_perform_user_event(ind, 0);
	instance_destroy(ind);
    break;

case "exiting":
    break;
}