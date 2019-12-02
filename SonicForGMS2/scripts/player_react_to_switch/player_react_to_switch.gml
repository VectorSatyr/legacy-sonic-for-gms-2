var ind = argument0;
var phase = argument1;

switch (phase) {
case "checking":
    if (ground_id == ind) {
        game_pc_react_to(self, ind);
    }
    break;

case "entering":
    ind.activated = true;
    instance_perform_user_event(ind.target, 0);
    break;

case "exiting":
    ind.activated = false;
    break;
}
