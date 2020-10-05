/// @description  Stop
if (playing) {
    audio_stop_sound(index);
    playing = false;
    index = -1;
}

