var phase = argument0;

switch (phase) {
case "start":
    if (on_the_ground) {
        ground_id = noone;
        on_the_ground = false;
    }

    spinning = true;

    game_pc_translate_speed(self, x_speed, local_direction);
    game_pc_lift(self, jump_force, local_direction);
    game_pc_redirect(self, gravity_direction);
    game_pc_align(self, gravity_direction);

    game_pc_animate(self, "spin");
    image_angle = gravity_direction;
    timeline_speed /= max(5 - floor(abs(x_speed)), 1);

    game_pc_camera_direct(self, game_pc_camera_state_aerial);
    break;

case "finish":
    rolling_jump = false;
    jump_action_available = true;
    break;

case "step":
    if (horizontal_axis_value != 0 and not rolling_jump) {
        if (abs(x_speed) < speed_cap) {
            x_speed += air_acceleration * horizontal_axis_value;
            if (abs(x_speed) > speed_cap) {
                x_speed = speed_cap * horizontal_axis_value;
            }
        }
    }

    game_pc_move_in_air(self);
    if (state_changed) {
        return false;
    }

    if (on_the_ground) {
        if (x_speed != 0) {
            return game_pc_perform(self, player_is_running);
        } else {
            return game_pc_perform(self, player_is_standing);
        }
    }

    if (input_action_pressed and jump_action_available) {
        switch (object_index) {
        case Sonic:
            if (shield != noone) {
                switch (shield.object_index) {
                case AquaShield: return game_pc_perform(self, player_is_aqua_bouncing); break;
                case ThunderShield: player_perform_thunder_jump(); break;
                case FlameShield: player_perform_flame_dash(); break;
                default: return game_pc_perform(self, player_is_drop_dashing);
                }
            } else {
                if (superform) {
                    return game_pc_perform(self, player_is_super_sonic_flying);
                } else if (not stage_end and owner.rings >= 50 and 
                    not (recovery_time > 0 or invincibility_time > 0) and 
                    game_save_all_emeralds_found(game_save_current())) {
                    return game_pc_perform(self, player_is_transforming);
                } else {
                    return game_pc_perform(self, player_is_drop_dashing);
                }
            }
            break;

        case Tails:
            if (not stage_end and owner.rings >= 50 and 
                not (superform or recovery_time > 0 or invincibility_time > 0) and 
                game_save_all_emeralds_found(game_save_current())) {
                return game_pc_perform(self, player_is_transforming);
            } else {
                flight_time = 480;
                if (underwater) {
                    return game_pc_perform(self, player_is_swimming);
                } else {
                    return game_pc_perform(self, player_is_flying);
                }
            }
            break;

        case Knuckles:
            if (not stage_end and owner.rings >= 50 and 
                not (superform or recovery_time > 0 or invincibility_time > 0) and 
                game_save_all_emeralds_found(game_save_current())) {
                return game_pc_perform(self, player_is_transforming);
            } else {
                return game_pc_perform(self, player_is_gliding);
            }
            break;
        }
    }

    if (not input_action and y_speed < -jump_release_force) {
        y_speed = -jump_release_force;
    }

    if (y_speed < 0 and y_speed > -jump_release_force) {
        if (abs(x_speed) > air_friction_threshold) {
            x_speed *= air_friction;
        }
    }

    y_speed += gravity_speed;

    if (horizontal_axis_value != 0 and facing_sign != horizontal_axis_value) {
        facing_sign = horizontal_axis_value;
    }
    break;
}
