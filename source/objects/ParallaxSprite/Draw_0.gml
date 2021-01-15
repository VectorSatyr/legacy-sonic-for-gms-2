/// @description Tile
if (sprite_index != -1)
{
	var camera = view_get_camera(view_current);
	var cx = camera_get_view_x(camera);
	var cy = camera_get_view_y(camera);
	var fx = x_absolute + x + (cx * x_scroll);
	var fy = y_absolute + y + (cy * y_scroll);
	var sx = width + x_separation;
	var sy = height + y_separation;
	var lx = (tile_horizontal and sx > 0) ? 
		(cx + ((fx - cx) mod sx) - sx) : fx;
	var ly = (tile_vertical and sy > 0) ? 
		(cy + ((fy - cy) mod sy) - sy) : fy;
	var rx = (tile_horizontal and sx > 0) ? 
		(cx + camera_get_view_width(camera) + sx) : fx;
	var ry = (tile_vertical and sy > 0) ? 
		(cy + camera_get_view_height(camera) + sy) : fy;
	var ox, oy;
	for (oy = ly; oy <= ry; oy += sy)
	{
		for (ox = lx; ox <= rx; ox += sx)
		{
			draw_sprite_part_ext(
				sprite_index, image_index, left, top, width, height, ox, oy, 
				image_xscale, image_yscale, image_blend, image_alpha
			);
		}
	}
}