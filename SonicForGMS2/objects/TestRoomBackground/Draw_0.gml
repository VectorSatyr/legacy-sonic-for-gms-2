/// @description Scale
var camera = view_get_camera(view_current);
var offset = vpos + floor(camera_get_view_y(camera) * vscroll);
var scale = clamp((water_height - offset) * water_scale_factor, -scale_limit, scale_limit);
for (var n = 0; n < total_lines; ++n)
{
    with (line[n])
	{
        image_yscale = scale;
        y_absolute = other.vpos + (n * other.line_height) * scale;
        event_perform(ev_draw, 0);
    }
}