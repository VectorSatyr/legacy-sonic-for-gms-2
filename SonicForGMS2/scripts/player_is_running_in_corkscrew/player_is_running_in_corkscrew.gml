// player_is_running_in_corkscrew(phase)

var phase = argument0;

switch (phase) {
case "start":
    game_pc_animate(self, "flip", true);
    //timeline_speed = 0;
    break;
}

return player_is_running(phase);
