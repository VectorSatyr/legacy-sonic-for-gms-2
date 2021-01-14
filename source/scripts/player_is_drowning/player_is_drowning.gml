function player_is_drowning(argument0) {
	var phase = argument0;

	switch (phase) {
	case "start":
	    spinning = false;

	    y_speed = 0;

	    on_the_ground = false;
	    ground_id = noone;

	    game_pc_redirect(id, gravity_direction);
	    game_pc_align(id, gravity_direction);
	    game_pc_lose_super(id);
	    game_pc_refresh_physics(id);

	    game_pc_animate(id, "drown");
	    image_angle = gravity_direction;

	    game_pc_camera_disconnect(id);

	    if (owner.index == 0) { // player 1
	        with (instance_create_layer(0, 0, "general", ZoneRestart)) {
	            player = other.owner;
	        }
	    }
	    break;
    
	default:
	    return player_is_defeated(phase);
	}



}
