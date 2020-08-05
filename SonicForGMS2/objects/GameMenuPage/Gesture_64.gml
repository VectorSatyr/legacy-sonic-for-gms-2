/// @description Confirm (Touch)
if (game_is_running())
{
	if (enabled and not ds_list_empty(choices) and alarm[0] <= 0 and 
		cursor.xspeed == 0 and selection != noone)
	{
		var posX = event_data[? "posX"];
		var posY = event_data[? "posY"];
		if (point_in_rectangle(posX, posY, 
			selection.bbox_left, selection.bbox_top, selection.bbox_right, selection.bbox_bottom))
		{
			show_debug_message(name + " [" + string(index) + "] : " + selection.name);
			event_user(2);
		}
	}
}