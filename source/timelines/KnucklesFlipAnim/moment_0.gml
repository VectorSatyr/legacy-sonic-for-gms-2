/// @description  Start animation
if (sign(facing_sign) < 0) {
    sprite_index = KnucklesReverseFlipSprite;
} else {
    sprite_index = KnucklesFlipSprite;
}
image_index = 0;
timeline_loop = false;

