/// @description  Gain
with (FMODAudioSystem) {
    if (music == other) {
        with (GameAudioConfiguration) {
            FMODGMS_Chan_Set_Volume(other.channel, volume_music * music_gain);
        }
    }
}

