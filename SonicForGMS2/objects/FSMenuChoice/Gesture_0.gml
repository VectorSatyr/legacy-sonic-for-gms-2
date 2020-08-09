/// @description Select
if (game_is_running())
{
	if (owner.enabled and owner.alarm[0] <= 0 and owner.mode != "confirm" and owner.cursor.xspeed == 0)
	{
		owner.alarm[0] = 1; // delay
		if (selected)
		{
			show_debug_message(owner.name + " [" + string(owner.index) + "] : " + name);
			instance_perform_user_event(owner, 2); // confirm
		}
		else
		{
			event_user(2);
			with (owner)
			{
				game_audio_play_sound((mode == "delete") ? BumperSound2 : ReelSound);
				cursor.target = selection;
				cursor.xspeed = cursor_base_speed * sign(selection.x - cursor.x);
				if (mode == "delete")
				{
					delete_icon.target = selection;
					delete_icon.xspeed = cursor.xspeed;
				}
			}
		}
	}
}