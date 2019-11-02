/// @description  Start
instance_destroy(GamePlayer);

var player;

if (object_exists(player_character)) {
    player = instance_create(0, 0, RealPlayer);
    player.index = 0;
    player.input_channel = 0;
    player.character_id = player_character;
    player.life_count = player_lives;
}

if (object_exists(assist_character)) {
    player = instance_create(0, 0, ComputerPlayer);
    player.index = 1;
    player.input_channel = 1;
    player.character_id = assist_character;
}

if (room_exists(location) and room != location) {
    game_screen_fade_out(BlackFadeShd, 22, location);
    game_audio_fade_out_music(22);
}

