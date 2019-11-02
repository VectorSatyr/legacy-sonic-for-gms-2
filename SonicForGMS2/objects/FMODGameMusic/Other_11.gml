/// @description  Stop
with (FMODAudioSystem) {
    if (music == other) {
        FMODGMS_Chan_StopChannel(channel);
    }
}
playing = false;

