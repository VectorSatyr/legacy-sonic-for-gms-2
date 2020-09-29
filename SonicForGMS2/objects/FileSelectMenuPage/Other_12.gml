/// @description Confirm
var type = string_letters(selection.name);
switch (mode)
{
case "confirm": // unused
	break;

case "delete":
	switch (type)
	{
	case "complete":
	case "existing":
		game_audio_play_sound(LampPostSound);
		mode = "confirm";
		delete_icon.mode = "confirm";
		break;

	case "delete":
		mode = "select";
		instance_perform_user_event(delete_icon, 1);
		break;
	
	default: // cancel deletion
		mode = "select";
		delete_icon.target = choice_delete;
		delete_icon.xspeed = cursor_base_speed;
		instance_perform_user_event(delete_icon, 1);
	}
	break;

default:
	switch (type)
	{
	case "delete":
		game_audio_play_sound(LampPostSound);
		mode = "delete";
		instance_perform_user_event(delete_icon, 0);
		break;

	default:
		game_audio_play_sound(WarpSound);
		game_save_select_current(selection.file_index);
		switch (type)
		{
		case "complete":
			switch (selection.location_index)
			{
			case 1: game_save_update_location(DemoZone2, selection.file_index); break;
			default: game_save_update_location(DemoZone1, selection.file_index);
			}

		case "existing":
			game_save_start(game_save_current());
			break;

		default:
			var file = instance_create_layer(0, 0, "general", GameSaveFile); // empty
			file.index = selection.file_index;
			switch (selection.character_index)
			{
			case 1: file.player_character = Sonic; break;
			case 2: file.player_character = Tails; break;
			case 3: file.player_character = Knuckles; break;
			default:
				file.player_character = Sonic;
				file.assist_character = Tails;
			}
			instance_perform_user_event(file, 3); // save
			instance_perform_user_event(file, 0); // start
		}
	}
}