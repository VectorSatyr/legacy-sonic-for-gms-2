/// @description Resets the game (stats, options, etc.) without closing the game program
function game_console_reset() {

	// save the game
	game_save_write_all();
	game_console_show_message("GAME SAVED");

	// stop audio
	audio_stop_all();

	// reset stats
	game_zone_check_point_clear();
	with (GamePlayer)
	{
	    game_player_set_score(id, 0);
	    game_player_set_rings(id, 0);
	    lives_via_rings = 0;
	}

	// return to title screen
	room_goto(SplashScreenRoom);


}
