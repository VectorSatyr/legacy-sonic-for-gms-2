/// @description Navigate (Touch)
if (game_is_running())
{
	if (enabled and not ds_list_empty(choices) and alarm[0] <= 0 and not flicked)
	{
		var rawdiffX = event_data[? "rawdiffX"];
		if (abs(rawdiffX) > flick_size)
		{
			flicked = true;
			if (sign(rawdiffX) < 0)
			{
				event_user((mode == "confirm") ? 1 : 0);
			}
			else if (sign(rawdiffX) > 0)
			{
				event_user((mode == "confirm") ? 0 : 1);
			}
		}
		else if (mode == "select" and selection != noone)
		{
			var rawdiffY = event_data[? "rawdiffY"];
			if (abs(rawdiffY) > flick_size)
			{
				flicked = true;
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