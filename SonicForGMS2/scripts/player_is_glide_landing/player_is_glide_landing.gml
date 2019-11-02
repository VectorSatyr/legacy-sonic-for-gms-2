// player_is_glide_landing(step)

var phase = argument0;

switch (phase) {
case "start":
    x_speed = 0;

    game_pc_animate(self, "glide_land");
    image_angle = gravity_direction;

    game_pc_camera_direct(self, game_pc_camera_state_normal);
    break;

case "finish":
    break;

case "step":
    if (input_action_pressed and game_pc_upper_collision_solid(self, y_radius + 5) == noone) {
        game_pc_play_sound(self, JumpSound);
        return game_pc_perform(self, player_is_jumping);
    }

    game_pc_move_on_ground(self);
    if (state_changed) {
        return false;
    }

    if (not on_the_ground or (local_direction >= 90 and local_direction <= 270)) {
        return game_pc_perform(self, player_is_glide_falling);
    }

    if (local_direction >= 45 and local_direction <= 315) {
        control_lock_time = default_slide_lock_time;
        return game_pc_perform(self, player_is_running);
    }

    if (x_speed != 0) {
        return game_pc_perform(self, player_is_running);
    }

    if (timeline_expired(self)) {
        return game_pc_perform(self, player_is_standing);
    }
    break;
}
