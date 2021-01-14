/// @description Update animation
event_inherited();
if (game_is_running() and not state_changed)
{
	switch (state)
	{
	case player_is_standing:
		if (superform and cliff_sign != 0 and cliff_sign == -facing_sign)
		{
			facing_sign = cliff_sign;
		}
		break;

	case player_is_running:
		var velocity = floor(abs(x_speed));
		var velocity_cap = (superform) ? 8 : 6;
		game_pc_animate(id, (velocity >= velocity_cap) ? "run" : "walk");
		timeline_speed = 1 / max(8 - velocity, 1);
		image_angle = direction;
		break;
	}
	if (superform)
	{
		if (game_pc_animating(id, "walk"))
		{
			sprite_index = (game_clock_get_step() mod 4 == 0) ? 
				SuperSonicWalkHighSprite : 
				SuperSonicWalkLowSprite;
		}
	}
}