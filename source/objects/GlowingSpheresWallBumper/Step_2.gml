  /// @description  Animate
var frame = game_clock_get_step();
if (timer > 0 and (frame div 4) mod 2 == 0) {
    image_index = 1 + frame mod 2;
} else {
	image_index = 0;
}