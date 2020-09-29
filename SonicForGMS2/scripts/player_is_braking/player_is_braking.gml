// player_is_braking(step)

var phase = argument0;

switch (phase) {
case "start":
    spinning = false;

    chain_multiplier = 0;

    game_pc_animate(self, "brake");
    image_angle = gravity_direction;

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
        if (sign(x_speed) != horizontal_axis_value) {
            if (control_lock_time == 0) {
                x_speed += land_deceleration * horizontal_axis_value;
                if (sign(x_speed) == horizontal_axis_value) {
                    x_speed = land_deceleration * horizontal_axis_value;
                    return game_pc_perform(self, player_is_running);
                }
            }
        } else {
            return game_pc_perform(self, player_is_running);
        }
    } else {
        x_speed -= min(abs(x_speed), land_friction) * sign(x_speed);
		if (input_down) {
            if (abs(x_speed) >= roll_threshold or mask_direction != gravity_direction) {
                game_pc_play_sound(self, SpinSound);
                return game_pc_perform(self, player_is_rolling);
            } else {
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
            return game_pc_perform(self, player_is_running);
        }
    }

    if (horizontal_axis_value == 0 and x_speed == 0) {
        return game_pc_perform(self, player_is_standing);
    }
    
    if (timeline_expired(self)) {
        return game_pc_perform(self, player_is_running);
    }

    // brake dust
    if (not underwater and game_clock_get_step() mod 4 == 0) {
        var distance = y_radius - 6;
        var x_offset = x_int + dsin(direction) * distance;
        var y_offset = y_int + dcos(direction) * distance;
		game_particles_spawn("brake_dust", x_offset, y_offset);
    }
    break;
}
