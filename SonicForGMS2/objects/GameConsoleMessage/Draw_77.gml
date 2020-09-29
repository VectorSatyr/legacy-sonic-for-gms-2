/// @description  Display message
var color = draw_get_color();
surface_set_target(application_surface);
draw_set_color(image_blend);
draw_set_font(font);
draw_set_halign(fa_right);
draw_text(x, y, text);
surface_reset_target();
draw_set_color(color);