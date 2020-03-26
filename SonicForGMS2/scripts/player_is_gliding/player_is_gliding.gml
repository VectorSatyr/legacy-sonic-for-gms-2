var phase = argument0;

switch (phase) {
case "start":
    spinning = false;

    if (on_the_ground) {
        ground_id = noone;
        on_the_ground = false;
    }

    game_pc_translate_speed(self, x_speed, local_direction);
    game_pc_redirect(self, gravity_direction);
    game_pc_align(self, gravity_direction);

    if (y_speed <= -8) {
        y_speed *= 0.25;
    } else if (y_speed < 0) {
        y_speed = 0;
    }

    glide_speed = 4;
    glide_direction = facing_sign;
    glide_angle = 90 - (90 * facing_sign);
    glide_force = 0.5;

    game_pc_animate(self, "glide");
    image_angle = gravity_direction;

    game_pc_camera_direct(self, game_pc_camera_state_aerial);
    break;

case "finish":
    break;

case "step":
    if (not input_action) {
        return game_pc_perform(self, player_is_glide_falling);
    }

    if (horizontal_axis_value != 0) {
        glide_direction = horizontal_axis_value;
    }

    if (abs(glide_angle) mod 180 == 0 and glide_speed < 16) {
        glide_speed += 0.015625;
        if (glide_speed > 16) {
            glide_speed = 16;
        }
    }

    glide_angle = clamp(glide_angle - (2.8125 * glide_direction), 0, 180);

    x_speed = glide_speed * dcos(glide_angle);

    game_pc_move_in_air(self);
    if (state_changed) {
        return false;
    }

    if (on_the_ground) {
        if (mask_direction != gravity_direction) {
            control_lock_time = default_slide_lock_time;
			return game_pc_perform(self, player_is_running);
        } else {
            return game_pc_perform(self, player_is_glide_sliding);
        }
    }

    if (glide_force < 0.5) {
        glide_force += 0.125;
        if (glide_force > 0.5) {
            glide_force = 0.5;
        }
    }

    var oy = glide_force - y_speed;
    if (abs(oy) > 0) {
        y_speed += min(abs(oy), 0.125) * sign(oy);
    }

    if (x_speed != 0) {
        facing_sign = sign(x_speed);
    }
    
    if (abs(glide_angle - 90) > 67.5) {
        image_index = 0;
    } else if (abs(glide_angle - 90) > 22.5) {
        image_index = 1;
    } else {
        image_index = 2;
    }
    break;
}
