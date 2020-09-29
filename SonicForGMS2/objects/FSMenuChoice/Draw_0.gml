/// @description Draw
draw_self();
if (title_label != "")
{
    var color = draw_get_color();
    draw_set_font(title_font);
    draw_set_halign(title_halign);
    draw_set_valign(title_valign);
    draw_set_color(title_color);
    draw_text(title_x, title_y, title_label);
    draw_set_color(color);
}