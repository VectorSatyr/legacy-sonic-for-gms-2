/// @description Animate
if (game_is_running())
{
	// bubbles
	if (remaining_air_time > 0)
	{
		if (remaining_air_time <= 720 and remaining_air_time mod 120 == 0)
		{
			var bubble = instance_create_layer(x_int + facing_sign * 4, y_int - 2, "effects", DrownPopupBubble);
			bubble.count = (remaining_air_time div 120) - 1;
			bubble.vind = owner.index;
			if (facing_sign == -1)
			{
				bubble.angle = 180;
			}
		}
		else if (remaining_air_time mod 60 == 0)
		{
			var bubble = instance_create_layer(x_int + facing_sign * 4, y_int - 2, "effects", Bubble);
			bubble.maximum_size = 2;
			if (facing_sign == -1)
			{
				bubble.angle = 180;
			}
		}
	}
}