/// @description Updates the screen to reflect changes in the number of screen ports
/// @argument {real} total (Optional) number of screen ports to display
function game_window_update_ports(argument0) {
	var ports = clamp(argument0, 1, 4);

	view_enabled = true;

	for (vind = 0; vind < MAX_VIEW_COUNT; ++vind)
	{
		view_set_visible(vind, false);
		view_set_xport(vind, 0);
		view_set_yport(vind, 0);
		view_set_wport(vind, 0);
		view_set_hport(vind, 0);
	}

	instance_perform_user_event(AppViewports, ports - 1);


}
