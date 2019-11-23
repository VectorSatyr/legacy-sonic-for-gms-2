/// @description  Draw
var color = draw_get_color();
draw_set_font(global.GaslightFont);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(text_ox, text_oy, string_hash_to_newline(text));
draw_set_font(global.HUDFont);
draw_text(countdown_ox, countdown_oy, string_hash_to_newline(countdown_string));
draw_sprite(continue_stars_back, 0, continue_stars_ox, continue_stars_oy);
if (continues_count > 0) {
    for (var n = 0; n < continues_max_count; ++n) {
        if (n != 0 or (continues_flash div 16) mod 2 == 0) {
            draw_sprite(
                continues_sprite, 
                game_clock_get_step() div 16, 
                continues_ox - (continues_separation * (continues_max_count - 1) * 0.5) + (continues_separation * n), 
                continues_oy);
        }
    }
}
draw_set_color(color);

