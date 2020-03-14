/// @description  Display
switch (phase) {
case "enter":
    current_header = ds_queue_dequeue(headers);
    current_text = ds_queue_dequeue(text);
    if (ds_queue_empty(headers) or ds_queue_empty(text)) {
        finished = true;
        game_audio_fade_out_music(total_display_time);
    }

    draw_set_font(font);
    header_height = string_height_ext(string_hash_to_newline(current_header), separation, header_width);
    text_height = string_height_ext(string_hash_to_newline(current_text), separation, text_width);
    var height = (header_height * 2) + separation + text_height;
    var oy = (CAMERA_HEIGHT * 0.5) - (height * 0.5);
    header_oy = oy + (header_height * 0.5);
    text_oy = oy + (header_height * 2) + separation + (text_height * 0.5);

    instance_destroy(fade);
    game_screen_fade_in(BlackFadeShd, 22);
    display_time = total_display_time;
    phase = "wait";
    break;

case "wait":
    --display_time;
    if (display_time <= 0) {
        phase = "exit";
    }
	if (game_input_event_pressed("start")) {
		finished = true;
		phase = "exit";
	}
    break;

case "exit":
    if (finished) {
        game_screen_fade_out(BlackFadeShd, 22, RestartRoom);
        phase = "";
    } else {
        fade = game_screen_fade_out(BlackFadeShd, 22, -1);
        phase = "transition";
    }
    break;

case "transition":
    if (fade.transition >= 3.0) {
        phase = "enter";
    }
    break;
}

