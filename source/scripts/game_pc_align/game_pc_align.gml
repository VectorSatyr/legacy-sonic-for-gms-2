function game_pc_align(argument0, argument1) {
	var character = argument0;
	var dir = argument1;

	with (character)
	{
	    if (mask_direction != dir)
		{
	        mask_direction = dir;
	        if (mask_direction mod 90 != 0)
			{
	            mask_direction = round(mask_direction / 90) * 90;
	        }
			with (mask)
			{
				image_angle = other.mask_direction;
			}
	    }
	}



}
