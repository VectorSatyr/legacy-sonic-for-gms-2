/// @description  Draw
if (sprite_index > -1) {
    var angle = image_angle;
    var blend = image_blend;
    var alpha = image_alpha;

    // handle angle
    if (angle mod image_angle_resolution != 0) {
        angle = round_to(angle, image_angle_resolution);
    }

    // handle alpha
    if (recovery_time > 0) {
        alpha -= ((recovery_time div 4) mod 2);
    }

    // ready to draw
    draw_sprite_ext(sprite_index, image_index, x_int, y_int, image_xscale * facing_sign, image_yscale, angle, blend, alpha);
}

if (mask_visible) {
    if (mask_direction mod 180) {
        draw_rectangle_color(x_int - y_radius, y_int - x_radius, x_int + y_radius, y_int + x_radius, c_lime, c_lime, c_lime, c_lime, true);
        draw_line_color(x_int, y_int - x_wall_radius, x_int, y_int + x_wall_radius, c_white, c_white);
    } else {
        draw_rectangle_color(x_int - x_radius, y_int - y_radius, x_int + x_radius, y_int + y_radius, c_lime, c_lime, c_lime, c_lime, true);
        draw_line_color(x_int - x_wall_radius, y_int, x_int + x_wall_radius, y_int, c_white, c_white);
    }

    var sine = dsin(mask_direction);
    var cosine = dcos(mask_direction);
    draw_line_color(x_int, y_int, x_int + sine * y_radius, y_int + cosine * y_radius, c_white, c_white);
}

