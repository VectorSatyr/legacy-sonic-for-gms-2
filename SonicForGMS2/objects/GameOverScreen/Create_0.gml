/// @description  Initialize
event_inherited();
image_speed = 0;

text_screen_x = CAMERA_WIDTH * 0.5;
text_screen_y = CAMERA_HEIGHT * 0.5;
text_screen_ox = 256 + text_screen_x;
text_enter_speed = 16;
state = 0;
timer = -1;

game_audio_enqueue_music(GameOverMusic);

with (ZoneTimeLimit) {
    enabled = false;
}

