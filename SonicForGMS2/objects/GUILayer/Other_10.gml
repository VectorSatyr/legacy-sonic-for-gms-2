/// @description Scale
var fullscreen = window_get_fullscreen();
if (fullscreen)
{
	// scale to display
	display_set_gui_size(display_height * game_aspect, display_height);
}
else
{
	// scale to game
	display_set_gui_size(game_width, game_height);
}
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();