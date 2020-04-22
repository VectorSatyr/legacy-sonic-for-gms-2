/// @description  Animate
if (timer > 0) {
	--timer;
	if (timer <= 0 or game_input_event_pressed("start")) {
        with (GamePlayer) {
            game_player_set_rings(self, 0);
            lives_via_rings = 0;
        }
        game_screen_fade_out(BlackFadeShd, 22, room);
        game_audio_fade_out_music(22);
		instance_destroy();
	}
}