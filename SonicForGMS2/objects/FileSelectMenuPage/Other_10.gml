/// @description Ascend
switch (mode)
{
case "confirm": // cancel deletion
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
	event_inherited();
	if (not is_undefined(previous_index) and index != previous_index)
	{
		game_audio_play_sound((mode == "delete") ? BumperSound2 : ReelSound);
		var last = ds_list_size(choices) - 1;
		with (cursor)
		{
			target = other.selection;
			xspeed = base_speed;
			image_index = (other.index == last) ? 1 : 0;
			if (other.index == 1)
			{
				x -= 2;
				y++;
			}
			else if (other.index == last)
			{
				x += 2;
				y--;
			}
		}
		if (mode == "delete")
		{
			with (delete_icon)
			{
				target = other.selection;
				xspeed = base_speed;
				if (other.index == 1)
				{
					x -= 2;
					y++;
				}
				else if (other.index == last)
				{
					x += 2;
					y--;
				}
			}
		}
	}
}