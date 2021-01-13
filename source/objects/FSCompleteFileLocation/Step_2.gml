/// @description Animate
var selected = (owner.selected and owner.owner.cursor.xspeed == 0);
if (not selected)
{
	sprite_index = FileSelectMenuFileLocationStaticSprite;
	image_index = game_clock_get_step() div static_frames;
}
else
{
	sprite_index = (owner.location_index > -1) ? FileSelectMenuFileLocationSprite : FileSelectMenuFileCompletionSprite;
	image_index = (owner.location_index > -1) ? owner.location_index + 1 : owner.completion_index;
}