var ind = argument0;
var phase = argument1;

switch (phase) {
case "checking":
    if (game_pc_arms_in_shape(self, ind, x_wall_radius + 2)) {
        game_pc_react_to(self, ind);
    }
    break;

case "entering":
    ind.timer = 12;

    if (state == player_is_hurt) {
        game_pc_perform(self, player_is_falling);
    }

    x_speed = ind.force * sign(x_int - ind.x);

    if (state == player_is_running) {
        control_lock_time = default_spring_lock_time;
    }

    if (state == player_is_jumping) {
        rolling_jump = false;
    }

    game_pc_animate(self, "flip", true);

    game_pc_play_sound(self, BumperSound);
    break;

case "exiting":
    break;
}