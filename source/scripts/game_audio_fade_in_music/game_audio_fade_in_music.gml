/// @description Fades in the given sound over the given number of steps
/// @argument {real} steps total steps to fade
/// @argument {real} music (optional) instance index of GameMusic
function game_audio_fade_in_music() {
	var music = game_audio_current_music();
	switch (argument_count) {
	case 2: music = argument[1];
	default:
	    var steps = argument[0];
	}

	if (instance_exists(music)) {
	    with (GameAudioConfiguration) {
	        music_gain = 0;
	        music_fade_in_time = steps;
	        music_fade_rate = 1 / steps;
	        instance_perform_user_event(music, 2);
	    }
	}



}
