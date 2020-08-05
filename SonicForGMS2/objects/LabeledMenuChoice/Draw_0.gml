/// @description Label
var color = draw_get_color();
var alpha = draw_get_alpha();
draw_set_font(font);
draw_set_halign(halign);
draw_set_valign(valign);
draw_set_alpha(image_alpha);
draw_set_color(image_blend);
draw_text(x, y, label);
draw_set_color(color);
draw_set_alpha(alpha);