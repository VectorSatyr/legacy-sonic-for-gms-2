/// @description  Start animation
if (facing_sign < 0) {
    sprite_index = SonicReverseFlipSprite;
} else {
    sprite_index = SonicFlipSprite;
}
image_index = 0;
timeline_loop = false;

