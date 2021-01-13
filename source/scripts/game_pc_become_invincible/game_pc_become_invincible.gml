/// @description Activates the invincibility power-up for the calling player instance (or resets the timer if already active.)
/// @param {Real} character player character instance index
/// @param {Real} time duration in frames
function game_pc_become_invincible(argument0, argument1) {
	var character = argument0;
	var time = argument1;

	with (character)
	{
	    if (not superform and invincibility_time < time and 
	        state != player_is_defeated and state != player_is_drowning)
		{
	        invincibility_time = time;
	        with (shield)
			{
	            visible = false;
	        }
	        if (not instance_exists(invincibility_effect))
			{
	            invincibility_effect = instance_create_layer(x_int, y_int, "effects", InvincibilityEffect);
	            invincibility_effect.source = id;
	            invincibility_effect.depth = depth - 1;
	        }
	        if (owner.index == 0) // player 1 only
			{
	            invincibility_music = game_audio_enqueue_music_timed(InvincibilityMusic, time);
	        }
	    }
	}


}
