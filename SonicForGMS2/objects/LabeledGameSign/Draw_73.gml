/// @description  Render
if (label != "" and font != -1)
{
    var view = vind;
    if (not view_exists(view))
	{
        view = view_current;
    }
    if (view_current == view)
	{
        var color = draw_get_color();
        var alpha = draw_get_alpha();
		var cam = view_get_camera(view);
        draw_set_font(font);
        draw_set_halign(halign);
        draw_set_valign(valign);
        draw_set_color(image_blend);
        draw_set_alpha(image_alpha);
        draw_text_ext_transformed(
			camera_get_view_x(cam) + x, 
			camera_get_view_y(cam) + y, 
			string_hash_to_newline(label), 
			separation, 
			width, 
			image_xscale, 
			image_yscale, 
			image_angle
		);
        draw_set_color(color);
        draw_set_alpha(alpha);
    }
}