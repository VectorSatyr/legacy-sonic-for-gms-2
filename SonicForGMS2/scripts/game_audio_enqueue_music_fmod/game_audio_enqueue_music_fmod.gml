/// @description  game_audio_enqueue_music_fmod(soundid)
/// @param soundid
/**
 * @description Starts music playback and 'queues' it using an instance of FMODGameMusic; destroying this instance will automatically cause the last 'queued' music to start again
 * @argument {real} soundid sound index
 * @returns {real} instance index of FMODGameMusic
 */

var soundid = argument0;

var music = instance_create_layer(0, 0, "general", FMODGameMusic);
music.soundid = soundid;

with (GameMusic) {
    if (id != music and next == noone) {
        event_user(1);
        next = music;
        music.previous = id;
    }
}

instance_perform_user_event(GameAudioConfiguration, 0);
instance_perform_user_event(music, 0);

return music;
