var phase = argument0;

switch (phase) {
case "start":
    spinning = false;
    game_pc_animate(self, "transform", true);
    image_angle = gravity_direction;
    game_pc_play_sound(self, TransformSound);
    game_pc_camera_direct(self, game_pc_camera_state_aerial);
    break;

case "finish":
    break;

case "step":
    if (timeline_position >= 38) {
        game_pc_become_super(self);
        game_pc_perform(self, player_is_falling);
        x_speed = 0;
        y_speed = 0;
    }
    break;
}
