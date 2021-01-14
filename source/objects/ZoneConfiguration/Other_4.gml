/// @description Setup
game_save_update_location(room, game_save_current());
game_window_update_ports(1);

with (GamePlayer)
{
	game_save_update_lives(id, game_save_current());
	if (not is_undefined(character_id) and other.display > -1)
	{
	    display = instance_create_layer(0, 0, "gui", other.display);
	    display.owner = id;
	    display.index = index;
	    instance_perform_user_event(display, 0);
	}
}

event_user(0); // play music

var rings = instance_number(Ring);
if (rings > 0)
{
    total_ring_count = rings;
}

instance_perform_user_event(GameTouchConfiguration, 0);