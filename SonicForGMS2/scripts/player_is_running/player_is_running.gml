// player_is_running(step)

var phase = argument0;

switch (phase) {
case "start":
    spinning = false;

    chain_multiplier = 0;

    game_pc_camera_direct(self, game_pc_camera_state_normal);
    break;

case "finish":
    control_lock_time = 0;
    break;

case "step":
    if (input_action_pressed and game_pc_upper_collision_solid(self, y_radius + 5) == noone) {
        game_pc_play_sound(self, JumpSound);
        return game_pc_perform(self, player_is_jumping);
    }

    if (horizontal_axis_value != 0) {
        if (x_speed != 0 and sign(x_speed) != horizontal_axis_value) {
            if (control_lock_time == 0) {
                if (abs(x_speed) > brake_threshold) {
                    facing_sign = -horizontal_axis_value;
                    if (mask_direction == gravity_direction) {
                        game_pc_play_sound(self, BrakeSound);
                        return game_pc_perform(self, player_is_braking);
                    }
                }
                x_speed += land_deceleration * horizontal_axis_value;
                if (sign(x_speed) == horizontal_axis_value) {
                    x_speed = land_deceleration * horizontal_axis_value;
                }
            }
        } else {
            facing_sign = horizontal_axis_value;
            if (abs(x_speed) < speed_cap) {
                x_speed += land_acceleration * horizontal_axis_value;
                if (abs(x_speed) > speed_cap) {
                    x_speed = speed_cap * horizontal_axis_value;
                }
            }
        }
    } else {
        x_speed -= min(abs(x_speed), land_friction) * sign(x_speed);
        if (input_down) {
            if (abs(x_speed) >= roll_threshold or mask_direction != gravity_direction) {
                game_pc_play_sound(self, SpinSound);
                return game_pc_perform(self, player_is_rolling);
            } else {//if (control_lock_time == 0) {
                return game_pc_perform(self, player_is_crouching);
            }
        }
    }

    game_pc_move_on_ground(self);
    if (state_changed) {
        return false;
    }

    if (not on_the_ground) {
        return game_pc_perform(self, player_is_falling);
    }

    x_speed -= game_pc_calc_slope_friction(self, slope_friction, land_friction);

    if (abs(x_speed) < slide_threshold and mask_direction != gravity_direction) {
        if (local_direction >= 90 and local_direction <= 270) {
            return game_pc_perform(self, player_is_falling);
        } else {
            control_lock_time = default_slide_lock_time;
        }
    }

    if (horizontal_axis_value == 0 and x_speed == 0) {
        return game_pc_perform(self, player_is_standing);
    }

    if (wall_id != noone and wall_sign == horizontal_axis_value and
        sign(x_speed) != -wall_sign) {
        return game_pc_perform(self, player_is_pushing);
    }
    break;
}
