/// @description  Setup scene
game_save_update_location(room, game_save_current());
game_window_update_ports();

instance_perform_user_event(GamePlayer, 0); // record lives
instance_perform_user_event(GamePlayer, 1); // create display

event_user(0); // play music

var rings = instance_number(Ring);
if (rings > 0) {
    total_ring_count = rings;
}

