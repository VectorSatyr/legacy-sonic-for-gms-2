/// @description Descend
switch (mode)
{
case "confirm": // confirm deletion
	game_save_delete(selection.file_index);
	if (selection.file_index == game_save_current())
	{
		game_save_select_current(-1);
	}
	game_audio_play_sound(AchievementSound);
	instance_perform_user_event(selection, 4);
	mode = "select";
	with (delete_icon)
	{
		y = ystart;
		target = other.choice_delete;
		xspeed = base_speed;
		event_user(1);
	}
	break;

default: // cursor movement
	if (not (mode == "delete" and index == 1))
	{
		event_inherited();
		if (not is_undefined(previous_index) and index != previous_index)
		{
			game_audio_play_sound((mode == "delete") ? BumperSound2 : ReelSound);
			var last = ds_list_size(choices) - 1;
			with (cursor)
			{
				target = other.selection;
				xspeed = -base_speed;
				image_index = (other.index == 0) ? 1 : 0;
				if (other.index == 0)
				{
					x += 2;
					y--;
				}
				else if (other.index == last - 1)
				{
					x -= 2;
					y++;
				}
			}
			if (mode == "delete")
			{
				with (delete_icon)
				{
					target = other.selection;
					xspeed = -base_speed;
					if (other.index == 0)
					{
						x += 2;
						y--;
					}
					else if (other.index == last - 1)
					{
						x -= 2;
						y++;
					}
				}
			}
		}
	}
}