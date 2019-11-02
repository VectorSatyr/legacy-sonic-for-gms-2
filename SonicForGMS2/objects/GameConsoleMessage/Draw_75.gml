/// @description  Display message
var color = draw_get_color();
draw_set_color(image_blend);
draw_set_font(font);
draw_set_halign(fa_right);
draw_text(x, y, string_hash_to_newline(text));
draw_set_color(color);

