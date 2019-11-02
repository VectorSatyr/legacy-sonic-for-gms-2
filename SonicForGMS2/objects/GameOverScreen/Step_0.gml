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
        var next_room = RestartRoom;
        var index = game_save_current();
        var file = game_save_find(index);
        if (instance_exists(file)) {
            if (file.player_continues > 0) {
                game_save_update_continues(-1, index);
                game_save_write(index);
                game_console_show_message("GAME SAVED");
                next_room = ContinueRoom;
            }
        }
        game_screen_fade_out(BlackFadeShd, 22, next_room);
        game_audio_fade_out_music(22);
        ++state; // do nothing
    }
    break;
}

