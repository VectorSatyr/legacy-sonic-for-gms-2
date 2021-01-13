/// @description Initialize
display_width = display_get_width();
display_height = display_get_height();
game_width = min(room_width, display_width);
game_height = min(room_height, display_height);
game_aspect = game_width / game_height;
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
application_surface_draw_enable(false);
surface_resize(application_surface, game_width, game_height);
surface_depth_disable(true);
event_user(0);