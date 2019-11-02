/// @description  Draw
var step = game_clock_get_step();
if (sprite_index == AquaShieldWaveSprite and step mod 2) {
    draw_sprite_ext(AquaShieldShellSprite, step div 12, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
} else {
    draw_self();
}

