/// @description  Overlay
var w = display_get_gui_width();
var h = display_get_gui_height();
gpu_set_blendenable(false);
gpu_set_alphatestenable(false);
gpu_set_colorwriteenable(false, true, false, false);
draw_surface_stretched(application_surface, 0, 0, w, h);
gpu_set_colorwriteenable(true, false, false, false);
draw_surface_stretched(application_surface, -1, 0, w, h);
gpu_set_colorwriteenable(false, false, true, false);
draw_surface_stretched(application_surface, 1, 0, w, h);
gpu_set_colorwriteenable(true, true, true, true);
gpu_set_blendenable(true);
gpu_set_alphatestenable(true);
draw_sprite_tiled(ScanLinesBack, 0, 0, 0);

