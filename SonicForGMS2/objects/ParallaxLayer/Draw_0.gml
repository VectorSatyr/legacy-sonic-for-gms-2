/// @description  Render
if (back != -1) {
    var fx = x_absolute + x + floor(__view_get( e__VW.XView, view_current ) * x_scroll);
    var fy = y_absolute + y + floor(__view_get( e__VW.YView, view_current ) * y_scroll);
    var sx = width + x_separation;
    var sy = height + y_separation;

    if (tile_horizontal) {
        var lx = __view_get( e__VW.XView, view_current ) + ((fx - __view_get( e__VW.XView, view_current )) mod sx) - sx;
        var rx = __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ) + sx;
    } else {
        var lx = fx;
        var rx = fx;
    }
    if (tile_vertical) {
        var ly = __view_get( e__VW.YView, view_current ) + ((fy - __view_get( e__VW.YView, view_current )) mod sy) - sy;
        var ry = __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, view_current ) + sy;
    } else {
        var ly = fy;
        var ry = fy;
    }

    var cx, cy;
    for (cy = ly; cy <= ry; cy += sy) {
        for (cx = lx; cx <= rx; cx += sx) {
            draw_background_part_ext(back, left, top, width, height, cx, cy, image_xscale, image_yscale, image_blend, image_alpha);
        }
    }
}

