/// @description  Start
game_audio_play_fmod(soundid);
with (FMODAudioSystem) {
    music = other;
    FMODGMS_Chan_Set_Position(channel, other.position);
}
playing = true;
position = 0;

