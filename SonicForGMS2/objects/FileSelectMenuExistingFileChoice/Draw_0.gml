/// @description  Draw
draw_self();

// other elements
var color = draw_get_color();
var sprite;

if (location_visible) {
    draw_sprite(FileSelectMenuFileLocationSprite, location_index, location_ox, location_oy);
} else {
    draw_sprite(FileSelectMenuFileLocationStaticSprite, game_clock_get_step() div 4, location_ox, location_oy);
}

if (game_clock_get_step() mod 3 == 0) {
    sprite = FileSelectMenuFileEmeraldsBlinkSprite;
} else {
    sprite = FileSelectMenuFileEmeraldsSprite;
}

for (var n = 0; n < 7; ++n) {
    if (chaos_emeralds & (1 << n)) {
        draw_sprite(sprite, n, emeralds_ox, emeralds_oy);
    }
}

draw_sprite(FileSelectMenuFileStatsSprite, character_index, x - 22, y + 131);

draw_set_font(global.HUDFont);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text(x + 25, y + 134, string_hash_to_newline(lives_text));
draw_text(x + 25, y + 158, string_hash_to_newline(continues_text));
draw_set_color(color);

// text
if (text != "") {
    var color = draw_get_color();
    draw_set_font(font);
    draw_set_halign(halign);
    draw_set_valign(valign);
    draw_set_color(font_color);
    draw_text(text_ox, text_oy, string_hash_to_newline(text));
    draw_set_color(color);
}

// character select
draw_sprite(FileSelectMenuFileCharacterSprite, character_index, select_ox, select_oy);
if (arrows_visible) {
    draw_sprite(FileSelectMenuArrowsSprite, 0, select_ox, select_oy);
}

