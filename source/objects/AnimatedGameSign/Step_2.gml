/// @description  Update
if (not paused) {
    if (moment_count > 0) {
        if (current_delay > 0) {
            --current_delay;
        } else {
            --current_duration;
            if (current_duration <= 0) {
                if (index < moment_count) {
                    current_duration = moment_duration[| index];
                    current_delay = moment_delay[| index];
                    x = moment_x[| index];
                    y = moment_y[| index];
                    image_xscale = moment_xscale[| index];
                    image_yscale = moment_yscale[| index];
                    image_angle = moment_angle[| index];
                    image_blend = moment_blend[| index];
                    image_alpha = moment_alpha[| index];
                    blend_color = image_blend;
                    ++index;
                    if (index == moment_count or current_duration == 0) {
                        inc_x = 0;
                        inc_y = 0;
                        inc_xscale = 0;
                        inc_yscale = 0;
                        inc_angle = 0;
                        inc_blend = 0;
                        inc_alpha = 0;
                    } else {
                        inc_x = (moment_x[| index] - x) / current_duration;
                        inc_y = (moment_y[| index] - y) / current_duration;
                        inc_xscale = (moment_xscale[| index] - image_xscale) / current_duration;
                        inc_yscale = (moment_yscale[| index] - image_yscale) / current_duration;
                        inc_angle = (moment_angle[| index] - image_angle) / current_duration;
                        inc_alpha = (moment_alpha[| index] - image_alpha) / current_duration;
                        if (blend_color != moment_blend[| index]) {
                            inc_blend = 1 / current_duration;
                        } else {
                            inc_blend = 0;
                        }
                    }
                } else if (destroy) {
                    instance_destroy();
                }
            } else {
                x += inc_x;
                y += inc_y;
                image_xscale += inc_xscale;
                image_yscale += inc_yscale;
                image_angle += inc_angle;
                blend_amount += inc_blend;
                image_alpha += inc_alpha;
                if (blend_amount != 0) {
                    image_blend = merge_colour(blend_color, moment_blend[| index], blend_amount);
                }
            }
        }
    }
}

