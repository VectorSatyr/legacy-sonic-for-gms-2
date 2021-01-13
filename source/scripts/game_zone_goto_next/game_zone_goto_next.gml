/// @description Transitions to the next zone as specified by the 'next_room' variable in GameZone
function game_zone_goto_next() {
	with (ZoneConfiguration) {
	    game_screen_fade_out(BlackFadeShd, 22, next_room);
	    game_audio_fade_out_music(22);
	}


}
