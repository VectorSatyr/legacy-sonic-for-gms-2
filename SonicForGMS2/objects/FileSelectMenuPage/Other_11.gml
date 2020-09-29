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
	delete_icon.target = choice_delete;
	delete_icon.xspeed = cursor_base_speed;
	instance_perform_user_event(delete_icon, 1);
	break;

default: // cursor movement
	if (not (mode == "delete" and index == 1))
	{
		event_inherited();
		if (not is_undefined(previous_index) and index != previous_index)
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