/// @description Tile
if (sprite_index != -1)
{
	var camera = view_get_camera(view_current);
	var cx = camera_get_view_x(camera);
	var cy = camera_get_view_y(camera);
    var fx = x_absolute + x + (cx * x_scroll div 1);
    var fy = y_absolute + y + (cy * y_scroll div 1);
    var sx = width + x_separation;
    var sy = height + y_separation;

    if (tile_horizontal)
	{
        var lx = cx + ((fx - cx) mod sx) - sx;
        var rx = cx + camera_get_view_width(camera) + sx;
    }
	else
	{
        var lx = fx;
        var rx = fx;
    }
    if (tile_vertical)
	{
        var ly = cy + ((fy - cy) mod sy) - sy;
        var ry = cy + camera_get_view_height(camera) + sy;
    }
	else
	{
        var ly = fy;
        var ry = fy;
    }

    var ox, oy;
    for (oy = ly; oy <= ry; oy += sy)
	{
        for (ox = lx; ox <= rx; ox += sx)
		{
            draw_sprite_part_ext(sprite_index, image_index, left, top, width, height, ox, oy, image_xscale, image_yscale, image_blend, image_alpha);
        }
    }
}