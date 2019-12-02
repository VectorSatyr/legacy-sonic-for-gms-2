var ind = argument0;
var phase = argument1;

switch (phase) {
case "checking":
    if (ground_id == ind) {
        game_pc_react_to(self, ind);
    }
    break;

case "entering":
    if (ind.time_to_crumble == 0) {
        ind.time_to_crumble = 32;
        ind.constant = true;
        ind.perp = self;
    }
    break;

case "exiting":
    break;
}
