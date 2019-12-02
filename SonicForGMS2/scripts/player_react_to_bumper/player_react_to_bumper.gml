var ind = argument0;
var phase = argument1;

switch (phase) {
case "checking":
    if (game_pc_upper_in_shape(self, ind, y_radius) or game_pc_lower_in_shape(self, ind, y_radius)) {
        game_pc_react_to(self, ind);
    }
    break;

case "entering":
    ind.timer = 16;

    if (state == player_is_hurt) {
        game_pc_perform(self, player_is_falling);
    }

    if (state == player_is_aqua_bouncing) {
        game_pc_perform(self, player_is_jumping);
        game_pc_play_sound(self, AquaBounceSound);
    }

    var bounce_direction = angle_wrap(round(point_direction(ind.x, ind.y, x_int, y_int)) - mask_direction);

    x_speed = dcos(bounce_direction) * ind.force;
    y_speed = -dsin(bounce_direction) * ind.force;

    if (state == player_is_running) {
        control_lock_time = default_spring_lock_time;
    }

    if (state == player_is_jumping) {
        rolling_jump = false;
    }

    game_pc_play_sound(self, BumperSound);
    break;

case "exiting":
    break;
}
