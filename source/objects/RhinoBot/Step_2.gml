/// @description  Move on terrain (and animate)
if (game_is_running()) {
    var on_the_ground = false;
    
    var total = instance_number(Solid);
    var n, ind;
    
    wall_sign = 0;
    cliff_sign = 0;
    
    var sine = dsin(gravity_direction + 90);
    var cosine = dcos(gravity_direction + 90);
    
    x += cosine * x_speed;
    y += -sine * x_speed;
    
    var x2 = x + (cosine * x_radius) * facing_sign;
    var y2 = y - (sine * x_radius) * facing_sign;
    
    for (n = 0; n < total; ++n) {
        ind = instance_find(Solid, n);
        if (game_shape_in_line(ind, x, y, x2, y2)) {
            wall_sign = sign(x_speed);
            break;
        }
    }

    x2 = x + (sine * y_radius);
    y2 = y + (cosine * y_radius);

    for (n = 0; n < total; ++n) {
        ind = instance_find(Solid, n);
        if (game_shape_in_line(ind, x, y, x2, y2)) {
            on_the_ground = true;
            break;
        }
    }

    if (not on_the_ground and x_speed != 0) {
        cliff_sign = sign(x_speed);
        x -= cosine * x_speed;
        y -= -sine * x_speed;
    }

    image_xscale = facing_sign;
}

