/// @description Initialize
event_inherited();
constant = true;
mask_width = sprite_get_width(mask_index);
mask_height = sprite_get_height(mask_index);
y_scale = 1;
y_speed = 2;
rise = function ()
{
	if (y > 0) {
		y = max(y - y_speed, 0);
		image_yscale = y_scale + ((ystart - y) / mask_height);
	}
}
lower = function ()
{
	if (y < room_height) {
		y = min(y + y_speed, room_height);
		image_yscale = y_scale + ((ystart - y) / mask_height);
	}
}