/// @description  Tally
if (game_is_running()) {
    switch (state) {
    case "entering":
		--timer;
        if (timer <= 0) {
            game_audio_play_sound(BeepSound, 0, true);
            state = "tallying";
        }
        break;
    
    case "tallying":
		var decrement = bonus_decrement;
		if (game_input_event("a", 0) or game_input_event("b", 0) or game_input_event("c", 0)) {
			decrement *= 2;
		}
        var change;
        if (time_bonus > 0) {
            change = min(time_bonus, decrement);
            time_bonus -= change;
            total_bonus += change;
            game_player_change_score(player, change);
			post_time_score.label = string(time_bonus);
			post_total_score.label = string(total_bonus);
        }
        if (rings_bonus > 0) {
            change = min(rings_bonus, decrement);
            rings_bonus -= change;
            total_bonus += change;
            game_player_change_score(player, change);
			post_rings_score.label = string(rings_bonus);
			post_total_score.label = string(total_bonus);
        }  
        if (perfect_bonus > 0) {
            change = min(perfect_bonus, decrement);
            perfect_bonus -= change;
            total_bonus += change;
            game_player_change_score(player, change);
			post_perfect_score.label = string(perfect_bonus);
			post_total_score.label = string(total_bonus);
        }
        if (not (time_bonus > 0 or rings_bonus > 0 or perfect_bonus > 0)) {
            audio_stop_sound(BeepSound);
            game_audio_play_sound(ChingSound);
            if (continues_count > 0) {
                timer = delay_before_continue;
                state = "delaying";
            } else {
                timer = delay_before_closing;
				state = "exiting";
            }
        }
        break;
    
    case "delaying":
		--timer;
        if (timer <= 0) {
            game_audio_play_sound(ContinueSound);
            game_save_update_continues(1, game_save_current());
            timer = delay_before_closing;
			state = "exiting";
        }
        break;

	case "exiting":
		--timer;
        if (timer <= 0) {
			with (GamePlayer) {
	            game_player_set_rings(id, 0);
	            lives_via_rings = 0;
	        }
			game_zone_check_point_clear();
	        game_zone_goto_next();
			instance_destroy();
		}
		break;
    }
}