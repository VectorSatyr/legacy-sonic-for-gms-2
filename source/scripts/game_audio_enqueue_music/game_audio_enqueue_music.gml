/// @description Starts music playback and 'queues' it using an instance of GameMusic; destroying this instance will automatically cause the last 'queued' music to start again
/// @argument {real} soundid sound index
/// @argument {real} priority (optional) channel priority; lower priority sounds may be cut off
/// @argument {boolean} loops (optional) whether or not the music repeats indefinitely
/// @returns {real} instance index of GameMusic
function game_audio_enqueue_music() {
	var priority = 0;
	var loops = false;
	switch (argument_count)
	{
	case 3: var loops = argument[2];
	case 2: var priority = argument[1];
	default:
	    var soundid = argument[0];
	}

	var music = instance_create_layer(0, 0, "general", GameMusic);

	music.soundid = soundid;
	music.priority = priority;
	music.loops = loops;

	with (GameAudioSystem)
	{
		if (ds_map_exists(intro_length, soundid)) music.intro_length = intro_length[? soundid];
		if (ds_map_exists(loop_length, soundid)) music.loop_length = loop_length[? soundid];
	}

	with (GameMusic)
	{
	    if (id != music and next == noone)
		{
	        event_user(1);
	        next = music;
	        music.previous = id;
	    }
	}

	instance_perform_user_event(GameAudioConfiguration, 0);
	instance_perform_user_event(music, 0);

	return music;


}
