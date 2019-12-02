var ind = argument0;
var phase = argument1;

switch (phase) {
case "checking":
    var rotation_offset = angle_wrap(round_to(ind.image_angle, 90) - mask_direction);

    if (game_pc_arms_in_shape(self, ind, x_wall_radius)) {
        if ((rotation_offset == 270 and x_speed < 0) or rotation_offset == 90 and x_speed > 0) {
            game_pc_react_to(self, ind);
        }
        break;
    }
    if (game_pc_lower_in_shape(self, ind, y_radius)) {
        if (rotation_offset == 0 and y_speed >= 0) {
            game_pc_react_to(self, ind);
        }
        break;
    }
    if (game_pc_upper_in_shape(self, ind, y_radius)) {
        if (rotation_offset == 180 and y_speed < 0) {
            game_pc_react_to(self, ind);
        }
        break;
    }
    break;

case "entering":
    var rotation_offset = angle_wrap(round_to(ind.image_angle, 90) - mask_direction);

    var x_spring_speed = -dsin(rotation_offset) * ind.force;
    var y_spring_speed = -dcos(rotation_offset) * ind.force;

    if (x_spring_speed != 0) {
        x_speed = x_spring_speed;
        facing_sign = sign(x_spring_speed);

        if (y_spring_speed == 0) {
            control_lock_time = default_spring_lock_time;
        }

        if (state == player_is_glide_sliding or state == player_is_glide_standing) {
            game_pc_perform(self, player_is_running);
        } else if (state == player_is_gliding) {
            game_pc_perform(self, player_is_falling);
            game_pc_animate(self, "run");
        }
    }
    
    if (y_spring_speed != 0) {
        game_pc_perform(self, player_is_falling);

        spinning = false;

        y_speed = y_spring_speed;

        image_angle = gravity_direction;

        if (ind.special_animation) {
            game_pc_animate(self, "flip", true);
        } else {
            game_pc_animate(self, "rise");
        }
    }

    if (x_spring_speed != 0 or y_spring_speed != 0) {
        instance_perform_user_event(ind, 0); // animate
        game_pc_play_sound(self, SpringSound);
    }
    break;

case "exiting":
    break;
}
