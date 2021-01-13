function game_player_spawn_character(argument0, argument1, argument2) {
	var player = argument0;
	var ox = argument1;
	var oy = argument2;

	with (player)
	{
	    if (object_exists(character_id))
		{
	        instance_destroy(character);
			if (not layer_exists(layer_id))
			{
				layer_id = layer_create(-index);
			}
	        character = instance_create_layer(ox, oy, layer_id, character_id);
	        character.owner = id;
	        character.camera.vind = index;
	        game_pc_camera_connect(character);
	        with (DevVisualization)
			{
	            other.character.mask.visible = visible;
	        }
	    }
	}


}
