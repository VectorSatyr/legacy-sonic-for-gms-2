/// @description  Animate
if (game_is_running()) {
    if (life > 0) {
        --life;
        if (life <= 0) {
            sprite_index = BrokenMonitorSprite;
            image_index = 0;
        } else {
            image_index = game_clock_get_step() div 8;
        }
    }
}

