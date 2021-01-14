/// @description Capture
if (game_is_running())
{
	with (PlayableCharacter)
	{
		if (linked_object_id == other.id)
		{
			game_pc_position(id, x, other.y);
		}
		else if (state != player_is_debug and y_int >= other.y)
		{
			game_pc_position(id, x, other.y);
			game_pc_perform(id, player_is_linked);
			x_speed = 0;
			y_speed = 0;
			spinning = true;
			linked_object_id = other.id;

			game_pc_animate(id, "spin");
			image_angle = gravity_direction;
			timeline_speed = 0.2;

			game_pc_camera_direct(id, game_pc_camera_state_aerial);
			game_pc_play_sound(id, LaserCaptureSound, false);

			if (owner.index == 0)
			{
				instance_create_layer(0, 0, "general", GlowingSpheresForcedExit);
				other.y_speed = 0;
				other.timer = 0;
			}
		}
	}

	// warning sound
	var ox = room_width / 2;
	with (game_player_find(0))
	{
		with (character)
		{
			ox = x_int;
		}
	}
	audio_emitter_position(audio_emitter, ox, y, 0);
	if (game_clock_get_step() mod warning_step == 0)
	{		
		audio_play_sound_on(audio_emitter, TeleportSound, false, 0);
	}
}