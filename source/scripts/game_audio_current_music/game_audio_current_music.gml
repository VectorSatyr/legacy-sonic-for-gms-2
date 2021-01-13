/// @description Returns the latest music in the 'queue'
/// @returns {real} instance index of GameMusic
function game_audio_current_music() {
	var current = noone;

	with (GameMusic) {
	    if (next == noone) {
	        current = id;
	    }
	}

	return current;



}
