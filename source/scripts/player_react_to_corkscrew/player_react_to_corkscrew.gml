function player_react_to_corkscrew(argument0, argument1) {
	var ind = argument0;
	var phase = argument1;

	switch (phase)
	{
	case "checking":
		if (ground_id == ind.mask)
		{
			game_pc_react_to(id, ind);
		}
		break;

	case "entering":
		if (state != player_is_rolling)
		{
			game_pc_perform(id, player_is_linked);
			game_pc_animate(id, "flip", true);
			linked_object_id = ind;
		}
		break;

	case "exiting":
		if (linked_object_id = ind)
		{
			game_pc_perform(id, player_is_running);
		}
		break;
	}


}
