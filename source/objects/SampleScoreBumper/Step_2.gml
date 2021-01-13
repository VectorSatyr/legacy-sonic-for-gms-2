/// @description  Animate
var frame = game_clock_get_step();

if (timer > 0 and (frame div 4) mod 2 == 0) {
    image_index = 3;
} else {
    image_index = (frame div 8) mod 3;
}

