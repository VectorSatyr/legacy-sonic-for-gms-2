/// @description  Start animation
if (facing_sign < 0) {
    sprite_index = TailsFlipReverseSprite;
} else {
    sprite_index = TailsFlipSprite;
}
image_index = 0;
timeline_loop = false;

