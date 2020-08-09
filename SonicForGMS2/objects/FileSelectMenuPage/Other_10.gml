/// @description Ascend
switch (mode)
{
case "confirm": // cancel deletion
	mode = "select";
	delete_icon.target = choice_delete;
	delete_icon.xspeed = cursor_base_speed;
	instance_perform_user_event(delete_icon, 1);
	break;

default: // cursor movement
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