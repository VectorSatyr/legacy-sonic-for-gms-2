draw_self();
/// Draw Text
if (text != "") {
    var color = draw_get_color();
    draw_set_font(font);
    draw_set_halign(halign);
    draw_set_valign(valign);
    draw_set_color(font_color);
    draw_text(text_ox, text_oy, string_hash_to_newline(text));
    draw_set_color(color);
}

