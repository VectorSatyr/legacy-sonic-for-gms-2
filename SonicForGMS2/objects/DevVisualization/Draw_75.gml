/// @description Inform
var color = draw_get_color();
var w = display_get_gui_width();
var h = display_get_gui_height();
draw_set_font(global.CrackersFont);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_set_color(c_black);
draw_text(w - text_shadow_ox, h - text_shadow_oy, text);
draw_set_color(image_blend);
draw_text(w - text_ox, h - text_oy, text);
draw_set_color(color);