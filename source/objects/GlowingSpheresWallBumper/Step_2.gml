  /// @description  Animate
var frame = game_clock_get_step();
var timing = (frame div 4) mod 2;
image_index = (timer > 0 and timing == 0) ? (1 + (frame mod 2)) : 0;