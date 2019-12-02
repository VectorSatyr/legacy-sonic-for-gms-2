var phase = argument0;

switch (phase) {
case "start":
    spinning = false;

    ground_id = noone;

    on_the_ground = false;

    game_pc_translate_speed(self, x_speed, local_direction);
    game_pc_redirect(self, gravity_direction);
    game_pc_align(self, gravity_direction);

    game_pc_animate(self, "hurt");
    image_angle = gravity_direction;

    game_pc_camera_direct(self, game_pc_camera_state_aerial);
    break;

case "finish":
    recovery_time = default_recovery_time;
    break;

case "step":
    game_pc_move_in_air(self);
    if (state_changed) {
        return false;
    }

    if (on_the_ground) {
        game_pc_perform(self, player_is_standing);
        x_speed = 0;
        y_speed = 0;
    }

    y_speed += gravity_recoil_speed;
    break;
}
