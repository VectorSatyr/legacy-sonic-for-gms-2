/// @description  Finish
if (playing and not finished) {
    if (not audio_is_playing(index)) {
        playing = false;
        finished = true;
        index = -1;
    }
}

