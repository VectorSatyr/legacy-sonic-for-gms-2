/// @description  Animate
if (game_is_running()) {
    // bubbles
    if (remaining_air_time > 0) {
        if (remaining_air_time <= 720 and remaining_air_time mod 120 == 0) {
            with (instance_create_layer(x_int + facing_sign * 4, y_int - 2, "effects", DrownPopup)) {
                count = other.remaining_air_time div 120;
                vind = other.owner.index;
                if (other.facing_sign == -1) {
                    angle = 180;
                }
            }
        } else if (remaining_air_time mod 60 == 0) {
            with (instance_create_layer(x_int + facing_sign * 4, y_int - 2, "effects", Bubble)) {
                maximum_size = 2;
                if (other.facing_sign == -1) {
                    angle = 180;
                }
            }
        }
    }
}

