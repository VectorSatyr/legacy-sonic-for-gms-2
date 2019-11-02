action_inherited();
/// Draw Character Select
draw_sprite(FileSelectMenuFileCharacterSprite, character_index, select_ox, select_oy);
if (arrows_visible) {
    draw_sprite(FileSelectMenuArrowsSprite, 0, select_ox, select_oy);
}

