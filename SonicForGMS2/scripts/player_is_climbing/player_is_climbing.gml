var phase = argument0;

switch (phase) {
case "start":
    x_speed = 0;
    y_speed = 0;

    game_pc_redirect(self, gravity_direction);
    game_pc_align(self, gravity_direction);

    game_pc_animate(self, "climb");
    image_angle = gravity_direction;

    game_pc_camera_direct(self, game_pc_camera_state_aerial);
    break;

case "finish":
    break;

case "step":
    if (input_action_pressed and game_pc_upper_collision_solid(self, y_radius + 5) == noone) {
        game_pc_perform(self, player_is_jumping);
        facing_sign = -facing_sign;
        x_speed = 4 * facing_sign;
        y_speed = -4;
        game_pc_play_sound(self, JumpSound);
        return false;
    }

    if (input_up) {
        y_speed = -climb_speed;
    } else if (input_down) {
        y_speed = climb_speed;
    } else {
        y_speed = 0;
    }

    if (instance_exists(climb_id)) {
        game_pc_ride(self, climb_id);
    } else {
        climb_id = noone;
        return game_pc_perform(self, player_is_glide_falling);
    }

    game_pc_memorize_reactions(self);
    game_pc_step_in_air_vertical(self, y_speed);

    if (on_the_ground) {
        return game_pc_perform(self, player_is_standing);
    }

    climb_id = game_pc_arms_collision_solid(self, x_wall_radius * 2);

    if (climb_id != noone) {
        if (not climb_id.bottom_solid) {
            climb_id = noone;
        } else if (climb_id.reaction_script != player_react_to_climbable_wall) {
            game_pc_position(self, x - (dsin(direction) * y_speed), y - (dcos(direction) * y_speed));
            y_speed = 0;
            //climb_id = noone;
        }
    }

    if (climb_id == noone) {
        if (y_speed < 0) {
            return game_pc_perform(self, player_is_lifting);
        } else {
            return game_pc_perform(self, player_is_glide_falling);
        }
    }

    image_index -= (sign(y_speed) * 0.25);
    break;
}
