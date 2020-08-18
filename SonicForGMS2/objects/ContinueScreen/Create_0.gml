/// @description Initialize
image_speed = 0;

state = "countdown";
countdown = 10 * room_speed;
countdown_text = string_format_zero(countdown div room_speed, 2, 0);
continues_count = 0;

var center_ox = CAMERA_WIDTH * 0.5;

continue_text = "CONTINUE";
continue_x = center_ox;
continue_y = 56;

countdown_x = center_ox;
countdown_y = 119;

icon_sprite = ContinueSonicIconSprite;
icon_x = center_ox;
icon_y = 82;
icon_separation = 24;
icon_flash = 0;
icon_anim_frames = 16;
icon_blink_frames = 16;
total_icons = (CAMERA_WIDTH - 16) div 16;

stars_x = countdown_x;
stars_y = countdown_y - 1;

var file = game_save_find(game_save_current());
if (instance_exists(file))
{
	continues_count = file.player_continues;
	total_icons = min(continues_count, total_icons);
	switch (file.assist_character)
	{
	case Tails:
		var sonic = instance_create_layer(center_ox - 4, CAMERA_HEIGHT - 64, "gui", ContinueScreenSonic);
		instance_create_depth(center_ox + 24, CAMERA_HEIGHT - 64, sonic.depth + 1, ContinueScreenTailsAssist);
		break;
	default:
		var character = ContinueScreenSonic;
		switch (file.player_character)
		{
		case Tails:
			character = ContinueScreenTails;
			icon_sprite = ContinueTailsIconSprite;
			break;
		case Knuckles:
			character = ContinueScreenKnuckles;
			icon_sprite = ContinueKnucklesIconSprite;
			break;
		}
		instance_create_layer(center_ox, CAMERA_HEIGHT - 66, "gui", character);
	}
}