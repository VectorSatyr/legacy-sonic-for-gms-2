/// @description  Draw scorecard
if (view_current < MAX_PLAYER_COUNT) {
    var color = draw_get_color();
    var x1 = __view_get( e__VW.XView, view_current );
    var y1 = __view_get( e__VW.YView, view_current );

    if (scene_act > 0) {
        draw_sprite(ZoneTitleS2ActSprite, scene_act - 1, x1 + act_screen_x + header_ox2, y1 + 62);
    }

    draw_background(TimeBonusScoreBack, x1 + time_score_screen_x + time_score_ox, y1 + time_score_screen_y);
    draw_background(RingBonusScoreBack, x1 + ring_score_screen_x + ring_score_ox, y1 + ring_score_screen_y);
    if (perfect_bonus > -1) {
        draw_background(PerfectBonusScoreBack, x1 + perfect_score_screen_x + perfect_score_ox, y1 + perfect_score_screen_y);
    }
    draw_background(TotalBonusScoreBack, x1 + total_score_screen_x + total_score_ox, y1 + total_score_screen_y);

    if (continues_count > 0 and state == 5 and (continues_flash div 16) mod 2 == 0) {
        draw_sprite(continues_icon, game_clock_get_step() div 22, x1 + continues_screen_x, y1 + continues_screen_y);
    }

    // header
    draw_set_font(global.GaslightFont);
    draw_set_halign(fa_left);
    draw_set_color(c_black);
    draw_text(x1 + header_screen_x1 - header_ox1 + 2, y1 + header_screen_y1 + 2, string_hash_to_newline(header_text1));
    draw_text(x1 + header_screen_x2 + header_ox2 + 2, y1 + header_screen_y2 + 2, string_hash_to_newline(header_text2));
    draw_set_color(c_white);
    draw_text(x1 + header_screen_x1 - header_ox1, y1 + header_screen_y1, string_hash_to_newline(header_text1));
    draw_text(x1 + header_screen_x2 + header_ox2, y1 + header_screen_y2, string_hash_to_newline(header_text2));

    // score values
    draw_set_font(global.HUDFont);
    draw_set_halign(fa_right);
    draw_text(x1 + score_value_screen_x + time_score_ox, y1 + time_score_screen_y + 1, string_hash_to_newline(time_bonus));
    draw_text(x1 + score_value_screen_x + ring_score_ox, y1 + ring_score_screen_y + 1, string_hash_to_newline(rings_bonus));
    if (perfect_bonus > -1) {
        draw_text(x1 + score_value_screen_x + perfect_score_ox, y1 + perfect_score_screen_y + 1, string_hash_to_newline(perfect_bonus));
    }
    draw_text(x1 + score_value_screen_x + total_score_ox, y1 + total_score_screen_y + 1, string_hash_to_newline(total_bonus));
    draw_set_color(color);
}

