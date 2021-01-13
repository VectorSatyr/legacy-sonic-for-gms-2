/// @description Starts music playback and 'queues' it using an instance of GameMusicJingle; destroying this instance will automatically cause the last 'queued' music to start again (it will automatically destroy itself after it has finished playing and also fade in the previous music)
/// @argument {real} soundid sound index
/// @argument {real} time (optional) playback duration in steps
/// @argument {real} fadetime (optional) fade duration in steps
/// @argument {real} priority (optional) channel priority; lower priority sounds may be cut off
/// @argument {boolean} loops (optional) whether or not the music repeats indefinitely
/// @returns {real} instance index of GameMusicJingle
function game_audio_enqueue_jingle() {
	var time = undefined;
	var fadetime = 120;
	var priority = 10;
	var loops = false;
	switch (argument_count)
	{
	case 5: loops = argument[4];
	case 4: priority = argument[3];
	case 3: fadetime = argument[2];
	case 2: time = argument[1];
	default:
	    var soundid = argument[0];
	}

	var music = instance_create_layer(0, 0, "general", GameMusicJingle);

	music.soundid = soundid;
	music.fade_time = fadetime;
	music.priority = priority;
	music.loops = loops;
	music.time = (is_undefined(time)) ? audio_sound_length(soundid) * room_speed : time;

	with (GameMusic)
	{
	    if (id != music and next == noone)
		{
	        if (playing)
			{
	            event_user(3);
	            event_user(1);
	        }
	        next = music;
	        music.previous = id;
	    }
	}

	instance_perform_user_event(GameAudioConfiguration, 0);
	instance_perform_user_event(music, 0);

	return music;


}
