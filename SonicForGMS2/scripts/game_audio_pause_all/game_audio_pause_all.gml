/// @description  game_audio_pause_all()
/**
 * @description Pauses all audio (including FMOD)
 */

with (GMSAudioSystem) {
    audio_pause_all();
}

with (FMODAudioSystem) {
    FMODGMS_Chan_PauseChannel(channel);
}
