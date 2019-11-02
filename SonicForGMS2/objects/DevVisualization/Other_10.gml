/// @description  Reveal
with (PlayableCharacter) {
    mask_visible = other.visible;
}
with (RectangleTerrain) {
    visible = other.visible;
}
with (RightTriangleTerrain) {
    visible = other.visible;
}
with (QuarterEllipseTerrain) {
    visible = other.visible;
}
with (QuarterPipeTerrain) {
    visible = other.visible;
}
with (Corkscrew) {
    mask.visible = other.visible;
}

