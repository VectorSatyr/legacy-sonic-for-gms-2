/// @description Starts music playback and 'queues' it using an instance of FMODTimedGameMusic; destroying this instance will automatically cause the last 'queued' music to start again (it will automatically destroy itself after it has finished playing)
/// @argument {real} soundid sound index
/// @argument {real} time (optional) playback duration in steps
/// @returns {real} instance index of FMODTimedGameMusic
var time = -1;
switch (argument_count) {
case 2: time = argument[1];
default:
    var soundid = argument[0];
}

var music = instance_create_layer(0, 0, "general", FMODTimedGameMusic);
music.soundid = soundid;
if (time > -1) {
    music.time = time;
} else {
    music.time = (FMODGMS_Snd_Get_Length(soundid) / 44100) * room_speed;
}

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
