/// @description Draw Stats
draw_self();
var color = draw_get_color();
draw_set_font(font);
draw_set_halign(halign);
draw_set_valign(valign);
draw_set_color(image_blend);
draw_text(lives_x, lives_y, owner.lives_label);
draw_text(continues_x, continues_y, owner.continues_label);
draw_set_color(color);