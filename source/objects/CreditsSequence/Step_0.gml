/// @description Display
switch (phase)
{
case "enter":
	postHeader.label = ds_queue_dequeue(headers);
	postText.label = ds_queue_dequeue(text);
	if (ds_queue_empty(headers) or ds_queue_empty(text))
	{
		finished = true;
		game_audio_fade_out_music(total_display_time);
	}

	draw_set_font(font);
	header_height = string_height_ext(postHeader.label, separation, header_width);
	text_height = string_height_ext(postText.label, separation, text_width);
	var height = (header_height * 2) + separation + text_height;
	var oy = (CAMERA_HEIGHT * 0.5) - (height * 0.5);
	postHeader.y = oy + (header_height * 0.5);
	postText.y = oy + (header_height * 2) + separation + (text_height * 0.5);

	instance_destroy(fade);
	game_screen_fade_in(BlackFadeShd, 22);
	display_time = total_display_time;
	phase = "wait";
	break;

case "wait":
	--display_time;
	if (game_input_event_pressed("start"))
	{
		finished = true;
		phase = "exit";
	}
	if (display_time <= 0)
	{
		phase = "exit";
	}
	break;

case "exit":
	fade = game_screen_fade_out(BlackFadeShd, 22, (finished) ? RestartRoom : -1);
	phase = (finished) ? "" : "transition";
	break;

case "transition":
	if (fade.transition >= 3.0)
	{
		phase = "enter";
	}
	break;
}