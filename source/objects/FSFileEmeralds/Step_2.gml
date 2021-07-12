/// @description Animate
sprite_index = (game_clock_get_step() mod blink_frame == 0) ? 
	FileSelectMenuFileEmeraldsBlinkSprite : FileSelectMenuFileEmeraldsSprite;
for (var n = 0; n < total; ++n)
{
	collected[n] = (owner.emeralds_count & int64(1 << n) > 0);
}