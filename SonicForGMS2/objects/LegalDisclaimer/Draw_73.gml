/// @description  Draw
var color = draw_get_color();
var alpha = draw_get_alpha();

draw_set_color(fade_background_color);
draw_set_alpha(fade_background_alpha * image_alpha);
draw_rectangle(0, 0, CAMERA_WIDTH, CAMERA_HEIGHT, false);

draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(font_color);
draw_set_alpha(image_alpha);
draw_text_ext(text_ox, text_oy, string_hash_to_newline(text), text_separation, text_width);
draw_set_alpha(press_start_alpha * image_alpha);
draw_text(press_start_ox, press_start_oy, string_hash_to_newline(press_start_text));
draw_set_color(color);
draw_set_alpha(alpha);

