/// @description  Animate
event_inherited();
if (game_is_running()) {
    var sine, cosine;
    
    for (var n = 0; n < array_length_1d(spark); ++n) {
        spark[n].depth = depth;
    }

    inner_rotation = angle_wrap(inner_rotation + inner_rot_speed);

    sine = dsin(inner_rotation);
    cosine = dcos(inner_rotation);

    mirror = !mirror;

    // first circle
    if (mirror) {
        spark[6].x = x + (cosine * radius);
        spark[6].y = y - (sine * radius);
        spark[7].x = x - (cosine * radius);
        spark[7].y = y + (sine * radius);
    } else {
        spark[6].x = x + (sine * radius);
        spark[6].y = y + (cosine * radius);
        spark[7].x = x - (sine * radius);
        spark[7].y = y - (cosine * radius);
    }

    outer_rotation = angle_wrap(outer_rotation + outer_rot_speed);

    sine = dsin(outer_rotation);
    cosine = dcos(outer_rotation);

    // second circle
    spark[4].x = offset_x[| 0] + (cosine * radius);
    spark[4].y = offset_y[| 0] - (sine * radius);
    spark[5].x = offset_x[| 0] - (cosine * radius);
    spark[5].y = offset_y[| 0] + (sine * radius);

    // third circle
    spark[2].x = offset_x[| spacing] - (sine * radius);
    spark[2].y = offset_y[| spacing] - (cosine * radius);
    spark[3].x = offset_x[| spacing] + (sine * radius);
    spark[3].y = offset_y[| spacing] + (cosine * radius);

    // fourth circle
    spark[0].x = offset_x[| spacing * 2] + (cosine * radius);
    spark[0].y = offset_y[| spacing * 2] - (sine * radius);
    spark[1].x = offset_x[| spacing * 2] - (cosine * radius);
    spark[1].y = offset_y[| spacing * 2] + (sine * radius);
}

