/// @description  Patrol
if (game_is_running()) {
    if (state != "charging") {
        var x1 = x - patrol_range_x;
        var y1 = y - patrol_range_y;
        var x2 = x + patrol_range_x;
        var y2 = y + patrol_range_y;
        with (PlayableCharacter) {
            if (point_in_rectangle(x_int, y_int, x1, y1, x2, y2)) {
                other.state = "charging";
                other.x_speed = 0;
                other.facing_sign = sign(x - other.x);
                other.timer = 60;
                other.image_index = 0;
                break;
            }
        }
    }
    
    switch (state) {
    case "patrolling":
        if (facing_sign == wall_sign or facing_sign == cliff_sign) {
            state = "turning";
            x_speed = 0;
            wall_sign = 0;
            cliff_sign = 0;
            timer = 10;
            image_index = 2;
            break;
        }

        --timer;

        if (timer <= 0) {
            state = "braking";
            image_index = 1;
            break;
        }

        if (abs(x_speed) < speed_cap) {
            x_speed += acceleration * facing_sign;
            if (abs(x_speed) > speed_cap) {
                x_speed = speed_cap * facing_sign;
            }
        }
        break;

    case "braking": // braking
        if (facing_sign == wall_sign or facing_sign == cliff_sign) {
            x_speed = 0;
        }

        if (x_speed == 0) {
            state = "turning";
            wall_sign = 0;
            cliff_sign = 0;
            timer = 10;
            image_index = 2;
            break;
        }

        if (abs(x_speed) > 0) {
            x_speed -= min(abs(x_speed), deceleration) * sign(x_speed);
        }
        break;

    case "turning":
        --timer;

        if (timer <= 0) {
            state = "patrolling";
            facing_sign = -facing_sign;
            timer = 60;
            image_index = 0;
        }
        break;

    case "charging":
        if (facing_sign == wall_sign or facing_sign == cliff_sign) {
            state = "turning";
            x_speed = 0;
            wall_sign = 0;
            cliff_sign = 0;
            timer = 10;
            image_index = 2;
            break;
        }

        if (timer > 0) {
            --timer;
            if (timer == 30) {
                x_speed = 5 * facing_sign;
            }
            if (timer == 0) {
                state = "braking";
                image_index = 0;
            }
        }
        break;
    }
}

/* */
/*  */
