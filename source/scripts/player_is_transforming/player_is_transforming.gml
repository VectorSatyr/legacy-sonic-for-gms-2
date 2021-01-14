function player_is_transforming(argument0) {
	var phase = argument0;

	switch (phase)
	{
	case "start":
	    spinning = false;
	    game_pc_animate(id, "transform", true);
	    image_angle = gravity_direction;
	    game_pc_play_sound(id, TransformSound);
	    game_pc_camera_direct(id, game_pc_camera_state_aerial);
		invincibility_time = 0;
		instance_destroy(invincibility_music);
		if (instance_exists(invincibility_effect))
		{
			instance_destroy(invincibility_effect);
			invincibility_effect = noone;
		}
		with (shield)
		{
		    visible = false;
		}
	    break;

	case "finish":
	    break;

	case "step":
	    if (timeline_position >= 38)
		{
	        game_pc_become_super(id);
	        game_pc_perform(id, player_is_falling);
	        x_speed = 0;
	        y_speed = 0;
	    }
	    break;
	}


}
