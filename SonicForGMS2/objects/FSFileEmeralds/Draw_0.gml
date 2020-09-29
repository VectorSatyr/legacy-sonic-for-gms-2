/// @description Draw
for (var n = 0; n < total; ++n)
{
    if (collected[n])
	{
        draw_sprite(sprite_index, n, x, y);
    }
}