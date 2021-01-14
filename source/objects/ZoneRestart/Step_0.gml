/// @description  Time out
if (game_is_running()) {
    --timer;
    switch (timer) {
    case 65:
        game_player_set_rings(player, 0);
        player.lives_via_rings = 0;
        if (not (debug_mode or instance_exists(DevControl))) {
            game_player_change_lives(player, -1);
            with (player) {
                if (life_count <= 0) {
                    instance_create_layer(0, 0, "gui", GameOverScreen);
                    instance_destroy(other.id);
                } else if (game_zone_time_over()) {
                    instance_create_layer(0, 0, "gui", TimeOverScreen);
                    instance_destroy(other.id);
                }
            }
        }
        break;

    case 0:
        with (GamePlayer) {
            game_player_set_rings(id, 0);
            lives_via_rings = 0;
        }
        game_screen_fade_out(BlackFadeShd, 22, room);
        game_audio_fade_out_music(22);
        instance_destroy();
        break;
    }
}

