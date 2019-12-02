var ind = argument0;
var phase = argument1;

switch (phase) {
case "checking":
    if (ground_id == ind.mask) {
        game_pc_react_to(self, ind);
    }
    if (state == player_is_running_in_corkscrew) {
        timeline_speed = 0;
        var ratio = (x_int - ind.bbox_left) / ind.sprite_width;
        if (facing_sign < 0) {
            ratio = 1 - ratio;
        }
        image_index = floor(12 * ratio);
    }
    break;

case "entering":
    if (state == player_is_running) {
        game_pc_perform(self, player_is_running_in_corkscrew);
    }
    break;

case "exiting":
    if (state == player_is_running_in_corkscrew) {
        game_pc_perform(self, player_is_running);
    }
    break;
}
