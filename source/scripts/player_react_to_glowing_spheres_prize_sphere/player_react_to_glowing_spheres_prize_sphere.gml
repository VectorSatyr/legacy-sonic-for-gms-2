function player_react_to_glowing_spheres_prize_sphere(argument0, argument1) {
	var ind = argument0;
	var phase = argument1;

	switch (phase)
	{
	case "checking":
	    if (game_pc_in_shape(id, ind, x_radius, y_radius))
		{
	        game_pc_react_to(id, ind);
	    }
	    break;

	case "entering":
	    break;

	case "exiting":
		var roll = game_clock_get_step() mod 4;
		var gumball = instance_create_layer(ind.x, ind.y, ind.layer, ind.prize_type[roll]);
		gumball.value = ind.prize_value[roll];

		ind.sprite_index = -1;
		timeline_set(ind, -1);
		ind.reaction_script = -1;
		ind.constant = true;
		ind.used = true;

		game_pc_play_sound(id, GumballSound);
	    break;
	}


}
