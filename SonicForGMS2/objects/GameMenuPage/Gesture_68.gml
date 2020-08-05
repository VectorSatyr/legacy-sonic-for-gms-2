/// @description Navigate (Touch)
if (game_is_running())
{
	var flicking = event_data[? "isflick"];
	if (enabled and not ds_list_empty(choices) and alarm[0] <= 0)
	{
		var rawdiffX = event_data[? "rawdiffX"];
		var rawdiffY = event_data[? "rawdiffY"];
		if (flicking)
		{
			if (abs(rawdiffX) > flick_size)
			{
				if (sign(rawdiffX) < 0)
				{
					event_user(0);
				}
				else if (sign(rawdiffX) > 0)
				{
					event_user(1);
				}
			}
			else if (mode == "select" and selection != noone)
			{
				if (abs(rawdiffY) > flick_size)
				{
					if (sign(rawdiffY) < 0)
					{
						instance_perform_user_event(selection, 0);
					}
					else if (sign(rawdiffY) > 0)
					{
						instance_perform_user_event(selection, 1);
					}
				}
			}
		}
	}
}