function player_react_to_crush_block(argument0, argument1) {
	var ind = argument0;
	var phase = argument1;

	switch (phase)
	{
	case "checking":
		if (point_distance(ind.xprevious, ind.yprevious, ind.x, ind.y) != 0)
		{
			var dir = angle_wrap(point_direction(ind.xprevious, ind.yprevious, ind.x, ind.y) + 90);
			var rotation = angle_wrap(round_to(dir, 90) - mask_direction);
			var opposite;
			switch (rotation)
			{
			case 0:
				opposite = game_pc_lower_collision_solid(id, y_radius + 1);
				if (game_pc_upper_in_shape(id, ind, y_radius) and 
					((on_the_ground and ground_id != ind) or 
					(opposite != noone and opposite != ind)))
				{
					game_pc_react_to(id, ind);
				}
				break;
			case 90:
				opposite = game_pc_right_collision_solid(id, x_wall_radius);
				if (game_pc_arm_in_shape(id, ind, -x_wall_radius) and
					opposite != noone and opposite != ind)
				{
					game_pc_react_to(id, ind);
				}
				break;
			case 180:
				opposite = game_pc_upper_collision_solid(id, y_radius);
				if (((on_the_ground and ground_id == ind) or 
					game_pc_lower_in_shape(id, ind, y_radius + 1)) and 
					opposite != noone and opposite != ind)
				{
					game_pc_react_to(id, ind);
				}
				break;
			case 270:
				opposite = game_pc_left_collision_solid(id, x_wall_radius);
				if (game_pc_arm_in_shape(id, ind, x_wall_radius) and
					opposite != noone and opposite != ind)
				{
					game_pc_react_to(id, ind);
				}
				break;
			}
		}
	    break;

	case "entering":
	    game_pc_perform(id, player_is_defeated);
	    game_pc_play_sound(id, HurtSound);
	    break;

	case "exiting":
	    break;
	}


}
