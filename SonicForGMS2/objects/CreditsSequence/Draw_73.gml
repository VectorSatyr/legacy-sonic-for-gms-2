/// @description  Draw
var color = draw_get_color();
var alpha = draw_get_alpha();
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(header_color);
draw_text_ext(header_ox, header_oy, string_hash_to_newline(current_header), separation, header_width);
draw_set_color(text_color);
draw_text_ext(text_ox, text_oy, string_hash_to_newline(current_text), separation, text_width);
draw_set_color(color);
draw_set_alpha(alpha);

