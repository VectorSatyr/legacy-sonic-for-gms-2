/// @description  Time out
if (game_is_running()) {
    --timer;
	if (timer <= 0) {
		with (PlayableCharacter) {
			if (instance_exists(shield)) { 
				game_zone_memory_add("player" + string(owner.index + 1) + "Shield", shield.object_index);
			}
		}
		game_screen_fade_out(BlackFadeShd, 22, next_room);
		game_audio_fade_out_music(22);
        instance_destroy();
    }
}