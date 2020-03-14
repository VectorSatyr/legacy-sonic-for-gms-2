/// @description  Handle state
if (game_is_running()) {
    --wait_time;
    
    switch (state) {
    case 0: // wait a moment
        if (wait_time <= 0) {
            ++state;
            if (header_ox1 > header_ox2) {
                wait_time = (header_ox1 / header_enter_speed) + 1;
            } else {
                wait_time = (header_ox2 / header_enter_speed) + 1;
            }
        }
        break;
    
    case 1: // move header text
        if (header_ox1 > 0) {
            header_ox1 -= header_enter_speed;
        }
        if (header_ox2 > 0) {
            header_ox2 -= header_enter_speed;
        }
        if (wait_time <= 0) {
            ++state;
            wait_time = delay_before_tally;
        }
        break;
    
    case 2: // move score value text
        if (time_score_ox > 0) {
            time_score_ox -= score_value_enter_speed;
        }
        if (ring_score_ox > 0) {
            ring_score_ox -= score_value_enter_speed;
        }
        if (perfect_score_ox > 0) {
            perfect_score_ox -= score_value_enter_speed;
        }
        if (total_score_ox > 0) {
            total_score_ox -= score_value_enter_speed;
        }
        if (wait_time <= 0) {
            game_audio_play_sound(BeepSound, 0, true);
            ++state;
        }
        break;
    
    case 3: // apply scores
		var decrement = bonus_decrement;
		if (game_input_event("a", 0) or game_input_event("b", 0) or game_input_event("c")) {
			decrement *= 2;
		}
        var change;
        if (time_bonus) {
            change = min(time_bonus, decrement);
            time_bonus -= change;
            total_bonus += change;
            game_player_change_score(player, change);
        }
        if (rings_bonus) {
            change = min(rings_bonus, decrement);
            rings_bonus -= change;
            total_bonus += change;
            game_player_change_score(player, change);
        }  
        if (perfect_bonus) {
            change = min(perfect_bonus, decrement);
            perfect_bonus -= change;
            total_bonus += change;
            game_player_change_score(player, change);
        }
        if (not (time_bonus or rings_bonus or perfect_bonus)) {
            if (continues_count > 0) {
                wait_time = delay_before_continue;
                ++state;
            } else {
                wait_time = delay_before_closing;
                state = 5;
            }
            audio_stop_sound(BeepSound);
            game_audio_play_sound(ChingSound);
        }
        break;
    
    case 4: // continues
        if (wait_time <= 0) {
            game_audio_play_sound(ContinueSound);
            game_save_update_continues(1, game_save_current());
            wait_time = delay_before_closing;
            ++state;
        }
        break;
    
    case 5: // move on
        if (continues_count > 0) {
            continues_flash++;
        }    
        if (wait_time <= 0) {
            ++state;
            with (GamePlayer) {
                game_player_set_rings(self, 0);
                lives_via_rings = 0;
            }
            game_start_location_reset();
            game_zone_goto_next();
        }
        break;
    }
}

