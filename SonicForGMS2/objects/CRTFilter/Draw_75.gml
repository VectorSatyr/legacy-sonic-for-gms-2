/// @description  Overlay
var w = display_get_gui_width();
var h = display_get_gui_height();
draw_enable_alphablend(false);
draw_set_alpha_test(false);
draw_set_color_write_enable(false, true, false, false);
draw_surface_stretched(application_surface, 0, 0, w, h);
draw_set_color_write_enable(true, false, false, false);
draw_surface_stretched(application_surface, -1, 0, w, h);
draw_set_color_write_enable(false, false, true, false);
draw_surface_stretched(application_surface, 1, 0, w, h);
draw_set_color_write_enable(true, true, true, true);
draw_enable_alphablend(true);
draw_set_alpha_test(true);
draw_sprite_tiled(ScanLinesBack, 0, 0, 0);

