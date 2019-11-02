/// @description  game_audio_fmod_add_sound(fname, [looppoint])
/// @param fname
/// @param  [looppoint]
/**
 * @description Loads an audio file with the given name from the "Audio" directory for use later
 * @argument {real} fname audio filename
 * @argument {real} looppoint (optional) loop point start position in samples
 */

var looppoint = 0;
switch (argument_count) {
case 2: var looppoint = argument[1];
default:
    var fname = argument[0];
}

with (FMODAudioSystem) {
    var key = filename_change_ext(filename_name(fname), "");
    if (ds_map_exists(sounds, key)) {
        FMODGMS_Snd_Unload(sounds[? key]);
    }
    var index = FMODGMS_Snd_LoadSound(fname);
    show_debug_message("FMODGMS_Snd_LoadSound(" + fname + ") -> " + string(index));
    if (index > -1) {
        var length = FMODGMS_Snd_Get_Length(index);
        FMODGMS_Snd_Set_LoopMode(index, 1, -1);
        FMODGMS_Snd_Set_LoopPoints(index, clamp(looppoint, 0, length), length);
        sounds[? key] = index;
    }
}
