/// @description  Play music
switch (typeof(music)) {
case "number":
    if (music > -1) {
        game_audio_enqueue_music(music, 2, true);
    }
    break;

case "string":
    game_audio_enqueue_music_fmod(music);
    break;
}

