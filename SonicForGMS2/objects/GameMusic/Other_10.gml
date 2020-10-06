/// @description  Start
if (not (playing or finished)) {
    index = game_audio_play_music(soundid, priority, loops);
    audio_sound_set_track_position(index, position);
    playing = true;
    finished = false;
    position = 0;
}

