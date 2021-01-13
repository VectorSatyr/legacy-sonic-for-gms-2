/// @description Starts audio playback (Stops all previous instances of the audio before playing)
/// @argument {real} soundid sound index
/// @argument {real} priority (optional) channel priority; lower priority sounds may be cut off
/// @argument {boolean} loops (optional) whether or not the music repeats indefinitely
/// @returns {real} index of played audio (-1 on error)
function game_audio_play() {
	var priority = 0;
	var loops = false;
	switch (argument_count) {
	case 3: var loops = argument[2];
	case 2: var priority = argument[1];
	default:
	    var soundid = argument[0];
	}

	if (audio_is_playing(soundid)) {
	    audio_stop_sound(soundid);
	}

	var index = audio_play_sound(soundid, priority, loops);

	if (instance_exists(PausedScreen)) {
	    audio_pause_sound(index);
	}

	return index;



}
