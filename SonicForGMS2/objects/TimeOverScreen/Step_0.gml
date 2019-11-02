/// @description  Handle state
switch (state) {
case 0: // move into position
    text_screen_ox -= text_enter_speed;
    if (text_screen_ox <= 0) {
        text_screen_ox = 0;
        timer = 660;
        ++state;
    }
    break;

case 1: // wait to start over (or skip)
    --timer;
    if (timer <= 0 or game_input_event_pressed("start")) {
        with (GamePlayer) {
            game_player_set_rings(self, 0);
            lives_via_rings = 0;
        }
        game_screen_fade_out(BlackFadeShd, 22, room);
        game_audio_fade_out_music(22);
        ++state; // do nothing
    }
    break;
}

