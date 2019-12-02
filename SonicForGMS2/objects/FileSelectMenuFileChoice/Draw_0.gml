/// @description  Draw Character Select
event_inherited();
draw_sprite(FileSelectMenuFileCharacterSprite, character_index, select_ox, select_oy);
if (arrows_visible) {
    draw_sprite(FileSelectMenuArrowsSprite, 0, select_ox, select_oy);
}

