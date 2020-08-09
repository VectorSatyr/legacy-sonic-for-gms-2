/// @description Animate
var selected = (owner.selected and owner.owner.cursor.xspeed == 0);
sprite_index = (not selected) ? FileSelectMenuFileLocationStaticSprite : FileSelectMenuFileLocationSprite;
image_index = (not selected) ? game_clock_get_step() div static_frames : owner.location_index;