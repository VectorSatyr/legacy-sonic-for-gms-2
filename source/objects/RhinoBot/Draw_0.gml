/// @description Draw
draw_self();
if (state == "braking" or (state == "charging" and timer > 30)) {
    draw_sprite_ext(RhinoBotDustSprite, game_clock_get_step() div 3, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

