event_inherited();
/// Animate
if (game_is_running()) {
    visible = true;
    switch (source.current_animation) {
    case "stand":
    case "stance_loop":
    case "brake":
    case "look_up":
    case "crouch":
    case "push":
        if (timeline_index != TailsTailsStanceAnim) {
            timeline_index = TailsTailsStanceAnim;
            timeline_position = 0;
        }
        break;

    case "spin":
        if (timeline_index != TailsTailsSpinAnim) {
            timeline_index = TailsTailsSpinAnim;
            timeline_position = 0;
        }
        break;

    case "spindash":
        if (timeline_index != TailsTailsSpinDashAnim) {
            timeline_index = TailsTailsSpinDashAnim;
            timeline_position = 0;
        }
        break;

    default:
        visible = false;
    }

    if (visible) {
        image_alpha = source.image_alpha;
        if (source.recovery_time > 0) {
            image_alpha -= ((source.recovery_time div 4) mod 2);
        }

        switch (source.current_animation) {
        case "spin":
            if (source.state != player_is_rolling) {
                image_xscale = source.facing_sign;
                if (sign(image_xscale) == 1) {
                    image_angle = point_direction(0, 0, source.x_speed, source.y_speed);
                } else {
                    image_angle = point_direction(source.x_speed, source.y_speed, 0, 0);
                }
            } else {
                if (source.x_speed != 0) {
                    image_xscale = sign(source.x_speed);
                }
                image_angle = source.direction;
            }
            break;

        default:
            image_xscale = source.facing_sign;
            image_angle = source.image_angle;
            break;
        }

        if (image_angle mod source.image_angle_resolution != 0) {
            image_angle = round_to(image_angle, source.image_angle_resolution);
        }
    }
}

