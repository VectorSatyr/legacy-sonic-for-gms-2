/// @description  Move
if ((game_clock_get_step() div 64) mod 2) {
    if (offset < sprite_height) {
        offset += (sprite_height * 0.25);
    }
} else {
    if (offset > 0) {
        offset -= (sprite_height * 0.25);
    }
}

// apply offset
x = xstart - dsin(image_angle) * offset;
y = ystart - dcos(image_angle) * offset;

