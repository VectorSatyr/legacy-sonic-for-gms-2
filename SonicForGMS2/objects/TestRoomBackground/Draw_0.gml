/// @description  Render water
var offset = vpos + floor(__view_get( e__VW.YView, view_current ) * vscroll);
var scale = clamp((water_height - offset) * water_scale_factor, -scale_limit, scale_limit);
for (var n = 0; n < total_lines; ++n) {
    with (line[n]) {
        image_yscale = scale;
        y_absolute = other.vpos + (n * other.line_height) * scale;
        event_perform(ev_draw, 0);
    }
}

