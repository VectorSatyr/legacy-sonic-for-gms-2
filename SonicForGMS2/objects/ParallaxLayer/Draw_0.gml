/// @description  Render
if (back != -1) {
	var cam = view_get_camera(view_current);
    var fx = x_absolute + x + floor(camera_get_view_x(cam) * x_scroll);
    var fy = y_absolute + y + floor(camera_get_view_y(cam) * y_scroll);
    var sx = width + x_separation;
    var sy = height + y_separation;

    if (tile_horizontal) {
        var lx = camera_get_view_x(cam) + ((fx - camera_get_view_x(cam)) mod sx) - sx;
        var rx = camera_get_view_x(cam) + camera_get_view_width(cam) + sx;
    } else {
        var lx = fx;
        var rx = fx;
    }
    if (tile_vertical) {
        var ly = camera_get_view_y(cam) + ((fy - camera_get_view_y(cam)) mod sy) - sy;
        var ry = camera_get_view_y(cam) + camera_get_view_height(cam) + sy;
    } else {
        var ly = fy;
        var ry = fy;
    }

    var cx, cy;
    for (cy = ly; cy <= ry; cy += sy) {
        for (cx = lx; cx <= rx; cx += sx) {
            draw_sprite_part_ext(back, 0, left, top, width, height, cx, cy, image_xscale, image_yscale, image_blend, image_alpha);
        }
    }
}

