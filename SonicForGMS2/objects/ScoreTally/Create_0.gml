/// @description  Initialize
image_speed = 0;

state = 0;

scene_act = game_zone_get_act();

draw_set_font(global.GaslightFont);

var character_name = "SONIC";
var ring_count = 0;

continues_icon = ContinueSonicIconSprite;

player = game_player_find(0);

with (player) {
    ring_count = rings;
    switch (character_id) {
    case Tails:
        character_name = "TAILS";
        other.continues_icon = ContinueTailsIconSprite;
        break;
    case Knuckles:
        character_name = "KNUCKLES";
        other.continues_icon = ContinueKnucklesIconSprite;
        break;
    }
}

header_text1 = character_name + " GOT";
header_text2 = "THROUGH ACT";

header_screen_x1 = (CAMERA_WIDTH * 0.5) - (string_width(string_hash_to_newline(header_text1)) * 0.5);
header_screen_y1 = 56;

header_screen_x2 = (CAMERA_WIDTH * 0.5) - (string_width(string_hash_to_newline(header_text2)) * 0.5);
header_screen_y2 = 74;

act_screen_x = (CAMERA_WIDTH * 0.5) + 88;
act_screen_y = 62;

score_label_screen_x = (CAMERA_WIDTH * 0.5) - 104;
score_value_screen_x = (CAMERA_WIDTH * 0.5) + 96;
continues_screen_x = score_value_screen_x + 16;
time_score_screen_x = score_label_screen_x + 13;
time_score_screen_y = 112;
ring_score_screen_x = score_label_screen_x + 12;
ring_score_screen_y = 128;
perfect_score_screen_x = score_label_screen_x;
perfect_score_screen_y = 144;
total_score_screen_x = score_label_screen_x + 33;
total_score_screen_y = 160;
continues_screen_y = total_score_screen_y - 6;

header_enter_speed = 16;
header_ox1 = ceil_to(header_screen_x1 + string_width(string_hash_to_newline(header_text1)), header_enter_speed);
header_ox2 = ceil_to(CAMERA_WIDTH - header_screen_x2, header_enter_speed);

score_value_enter_speed = 16;
time_score_ox = ceil_to(CAMERA_WIDTH - score_label_screen_x, score_value_enter_speed);
ring_score_ox = time_score_ox + score_value_enter_speed;
perfect_score_ox = time_score_ox + (score_value_enter_speed * 2);
total_score_ox = time_score_ox + (score_value_enter_speed * 3);

continues_flash = 0;

game_audio_enqueue_music(ActCompletionMusic, 4, false);

delay_before_tally = 176;
delay_before_continue = 60;
delay_before_closing = 240;

wait_time = 60;

bonus_decrement = 100;

total_bonus = 0;

var total_time = 0;

with (ZoneTimeLimit) {
    total_time = (limit - count) div 60;
}

if (total_time > 570) {
    time_bonus = 50000;
} else if (total_time > 555) {
    time_bonus = 10000;
} else if (total_time > 540) {
    time_bonus = 5000;
} else if (total_time > 510) {
    time_bonus = 4000;
} else if (total_time > 480) {
    time_bonus = 3000;
} else if (total_time > 420) {
    time_bonus = 2000;
} else if (total_time > 360) {
    time_bonus = 1000;
} else if (total_time > 300) {
    time_bonus = 500;
} else {
    time_bonus = 0;
}

rings_bonus = ring_count * 10;

perfect_bonus = -1;
if (game_zone_get_total_rings() == 0) {
    perfect_bonus = 50000;
}

continues_count = 0;
if (time_bonus + rings_bonus + max(perfect_bonus, 0) >= 10000) {
    continues_count++;
}

