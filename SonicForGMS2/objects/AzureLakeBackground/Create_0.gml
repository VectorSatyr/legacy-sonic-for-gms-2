/// @description Initialize
ripple_magnitude = 3;

var back = AzureLakeBack;
var vscroll = (room_height - sprite_get_height(back)) / (room_height - CAMERA_HEIGHT);

// clouds
game_parallax_add_sprite_part(back, 0, 0, 0, 0, 256, 32, 0, 0, true, false, 0.85, vscroll, 0, 0, -0.4, 0);
game_parallax_add_sprite_part(back, 0, 0, 0, 32, 256, 16, 0, 32, true, false, 0.83, vscroll, 0, 0, -0.3, 0);
game_parallax_add_sprite_part(back, 0, 0, 0, 48, 256, 16, 0, 48, true, false, 0.80, vscroll, 0, 0, -0.2, 0);

// mountains
game_parallax_add_sprite_part(back, 0, 0, 0, 64, 256, 46, 0, 64, true, false, 0.74, vscroll);

// forest
game_parallax_add_sprite_part(back, 0, 0, 0, 110, 256, 25, 0, 110, true, false, 0.71, vscroll);

scanlines = 11;
var step = 41 / scanlines;
var n;

// reflection
for (n = 0; n < scanlines; ++n)
{
    scan[n] = game_parallax_add_sprite_part(back, 0, 0, 0, 135 + floor(n * step), 256, ceil(step), 0, 135 + floor(n * step), true, false, 0.71, vscroll);
}

// foreground
for (n = 0; n < 10; ++n)
{
    game_parallax_add_sprite_part(back, 0, 0, 0, 176 + n * 8, 256, 8, 0, 176 + n * 8, true, false, 0.5 - ((1 + n) / 15) * 0.5, vscroll);
}