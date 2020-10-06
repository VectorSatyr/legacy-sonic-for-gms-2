/// @description Finish
if (playing and not finished)
{
    if (audio_is_playing(index))
	{
		if (loop_length > 0)
		{
			var pos = audio_sound_get_track_position(index);
			var new_pos = pos - loop_length;
			if (new_pos > intro_length) audio_sound_set_track_position(index, new_pos);
		}
	}
	else
	{
        playing = false;
        finished = true;
        index = -1;
    }
}