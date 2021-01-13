function game_pc_play_sound() {
	var loops = false;
	switch (argument_count) {
	case 3: loops = argument[2];
	default:
	    var soundid = argument[1];
	    var character = argument[0];
	}

	var index = -1;

	with (character) {
	    if (not is_undefined(ds_map_find_value(sounds, soundid))) {
	        audio_stop_sound(sounds[? soundid]);
	    }
	    sounds[? soundid] = audio_play_sound_on(audio_emitter, soundid, loops, 0);
	    index = sounds[? soundid];
	}

	return index;



}
