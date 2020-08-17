/// @description Initialize
image_speed = 0;

headers = ds_queue_create();
text = ds_queue_create();

phase = "enter";
finished = false;

fade = noone;

total_display_time = 330;
display_time = 0;

font = global.CreditsFont;
separation = 9;

current_header = "";
header_ox = CAMERA_WIDTH * 0.5;
header_oy = CAMERA_HEIGHT * 0.5;
header_width = CAMERA_WIDTH * 0.875;
header_height = 0;
header_color = c_yellow;

current_text = "";
text_ox = CAMERA_WIDTH * 0.5;
text_oy = CAMERA_HEIGHT * 0.5;
text_width = CAMERA_WIDTH * 0.875;
text_height = 0;
text_color = c_white;