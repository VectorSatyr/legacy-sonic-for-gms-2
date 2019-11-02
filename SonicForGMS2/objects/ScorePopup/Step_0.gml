/// @description  Rise
if (game_is_running()) {
    y = ystart - dcos(life * 2.8125) * 48;
    
    if (life > 0) {
        --life
        if (life <= 0) {
            instance_destroy();
        }
    }
}

