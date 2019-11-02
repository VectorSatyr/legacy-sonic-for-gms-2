/// @description  game_audio_play_fmod(soundid)
/// @param soundid
/**
 * @description Starts FMOD sound playback
 * @argument {real} soundid sound index
 * @returns {real} FMOD index of played audio (-1 on error)
 */

var soundid = argument0;

var index = -1;

with (FMODAudioSystem) {
    index = ds_map_find_value(sounds, soundid);
    if (not is_undefined(index)) {
        if (index > -1) {
            FMODGMS_Snd_PlaySound(index, channel);
            with (GameAudioConfiguration) {
                FMODGMS_Chan_Set_Volume(other.channel, volume_music * music_gain);
            }
            if (instance_exists(PausedScreen)) {
                FMODGMS_Chan_PauseChannel(channel);
            }
        }
    }
}

return index;
