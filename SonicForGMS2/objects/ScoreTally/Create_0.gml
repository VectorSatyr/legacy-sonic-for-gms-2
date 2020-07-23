/// @description  Initialize
image_speed = 0;

state = "entering";

act = game_zone_get_act();

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

draw_set_font(global.GaslightFont);

header_text1 = character_name + " GOT";
header_text2 = "THROUGH ACT";

header_screen_x1 = (CAMERA_WIDTH * 0.5) - (string_width(header_text1) * 0.5);
header_screen_y1 = 56;
header_shadow_x1 = header_screen_x1 + 2;
header_shadow_y1 = header_screen_y1 + 2;

header_screen_x2 = (CAMERA_WIDTH * 0.5) - (string_width(header_text2) * 0.5);
header_screen_y2 = 74;
header_shadow_x2 = header_screen_x2 + 2;
header_shadow_y2 = header_screen_y2 + 2;

act_screen_x = (CAMERA_WIDTH * 0.5) + 88;
act_screen_y = 62;

score_label_screen_x = (CAMERA_WIDTH * 0.5) - 104;
score_value_screen_x = (CAMERA_WIDTH * 0.5) + 96;
time_label_screen_x = score_label_screen_x + 13;
time_label_screen_y = 112;
time_value_screen_x = score_value_screen_x;
time_value_screen_y = time_label_screen_y + 1;
ring_label_screen_x = score_label_screen_x + 12;
ring_label_screen_y = 128;
ring_value_screen_x = score_value_screen_x;
ring_value_screen_y = ring_label_screen_y + 1;
perfect_label_screen_x = score_label_screen_x;
perfect_label_screen_y = 144;
perfect_value_screen_x = score_value_screen_x;
perfect_value_screen_y = perfect_label_screen_y + 1;
total_label_screen_x = score_label_screen_x + 33;
total_label_screen_y = 160;
total_value_screen_x = score_value_screen_x;
total_value_screen_y = total_label_screen_y + 1;
continues_screen_x = score_value_screen_x + 16;
continues_screen_y = total_label_screen_y - 6;

header_enter_speed = 16;
header_ox1 = ceil_to(header_screen_x1 + string_width(string_hash_to_newline(header_text1)), header_enter_speed);
header_ox2 = ceil_to(CAMERA_WIDTH - header_screen_x2, header_enter_speed);
if (header_ox1 > header_ox2) {
    header_enter_duration = (header_ox1 / header_enter_speed) + 1;
} else {
    header_enter_duration = (header_ox2 / header_enter_speed) + 1;
}

score_value_enter_speed = 16;
time_score_ox = ceil_to(CAMERA_WIDTH - score_label_screen_x, score_value_enter_speed);
time_score_enter_duration = time_score_ox / score_value_enter_speed;
ring_score_ox = time_score_ox + score_value_enter_speed;
ring_score_enter_duration = ring_score_ox / score_value_enter_speed;
perfect_score_ox = ring_score_ox + score_value_enter_speed;
perfect_score_enter_duration = perfect_score_ox / score_value_enter_speed;
total_score_ox = perfect_score_ox + score_value_enter_speed;
total_score_enter_duration = total_score_ox / score_value_enter_speed;

continues_flash = 0;

game_audio_enqueue_music(ActCompletionMusic, 4, false);

delay_before_tally = 176;
delay_before_continue = 60;
delay_before_closing = 240;

wait_before_start = 60;
wait_before_score_text = wait_before_start + header_enter_duration;
wait_before_tally = wait_before_score_text + delay_before_tally;
timer = wait_before_tally;

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

rings_bonus = ring_count * 100;

perfect_bonus = -1;
if (game_zone_get_total_rings() == 0) {
    perfect_bonus = 50000;
}

continues_count = 0;
if (time_bonus + rings_bonus + max(perfect_bonus, 0) >= 10000) {
    continues_count++;
}

if (act > 0) {
	post_act_header = instance_create_layer(act_screen_x + header_ox2, act_screen_y, "gui", AnimatedGameSign);
	post_act_header.sprite_index = ZoneTitleS2ActSprite;
	post_act_header.image_index = act - 1;
	post_act_header.destroy = false;
	game_sign_add_moment(post_act_header, header_enter_duration, wait_before_start, act_screen_x + header_ox2, act_screen_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	game_sign_add_moment(post_act_header, 0, 0, act_screen_x, act_screen_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

post_header_line1 = instance_create_layer(header_screen_x1 - header_ox1, header_screen_y1, "gui", AnimatedLabeledGameSign);
post_header_line1.label = header_text1;
post_header_line1.font = global.GaslightFont;
post_header_line1.destroy = false;
game_sign_add_moment(post_header_line1, header_enter_duration, wait_before_start, header_screen_x1 - header_ox1, header_screen_y1, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
game_sign_add_moment(post_header_line1, 0, 0, header_screen_x1, header_screen_y1, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

post_header_shadow1 = instance_create_layer(header_shadow_x1 - header_ox1, header_shadow_y1, "gui", AnimatedLabeledGameSign);
post_header_shadow1.label = header_text1;
post_header_shadow1.font = global.GaslightFont;
post_header_shadow1.destroy = false;
game_sign_add_moment(post_header_shadow1, header_enter_duration, wait_before_start, header_shadow_x1 - header_ox1, header_shadow_y1, image_xscale, image_yscale, image_angle, c_black, image_alpha);
game_sign_add_moment(post_header_shadow1, 0, 0, header_shadow_x1, header_shadow_y1, image_xscale, image_yscale, image_angle, c_black, image_alpha);

post_header_line2 = instance_create_layer(header_screen_x2 + header_ox2, header_screen_y2, "gui", AnimatedLabeledGameSign);
post_header_line2.label = header_text2;
post_header_line2.font = global.GaslightFont;
post_header_line2.destroy = false;
game_sign_add_moment(post_header_line2, header_enter_duration, wait_before_start, header_screen_x2 + header_ox2, header_screen_y2, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
game_sign_add_moment(post_header_line2, 0, 0, header_screen_x2, header_screen_y2, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

post_header_shadow2 = instance_create_layer(header_shadow_x2 + header_ox2, header_shadow_y2, "gui", AnimatedLabeledGameSign);
post_header_shadow2.label = header_text2;
post_header_shadow2.font = global.GaslightFont;
post_header_shadow2.destroy = false;
game_sign_add_moment(post_header_shadow2, header_enter_duration, wait_before_start, header_shadow_x2 + header_ox2, header_shadow_y2, image_xscale, image_yscale, image_angle, c_black, image_alpha);
game_sign_add_moment(post_header_shadow2, 0, 0, header_shadow_x2, header_shadow_y2, image_xscale, image_yscale, image_angle, c_black, image_alpha);

post_time_header = instance_create_layer(time_label_screen_x + time_score_ox, time_label_screen_y, "gui", AnimatedGameSign);
post_time_header.sprite_index = TimeBonusScoreSprite;
post_time_header.destroy = false;
game_sign_add_moment(post_time_header, time_score_enter_duration, wait_before_score_text, time_label_screen_x + time_score_ox, time_label_screen_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
game_sign_add_moment(post_time_header, 0, 0, time_label_screen_x, time_label_screen_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

post_ring_header = instance_create_layer(ring_label_screen_x + ring_score_ox, ring_label_screen_y, "gui", AnimatedGameSign);
post_ring_header.sprite_index = RingBonusScoreSprite;
post_ring_header.destroy = false;
game_sign_add_moment(post_ring_header, ring_score_enter_duration, wait_before_score_text, ring_label_screen_x + ring_score_ox, ring_label_screen_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
game_sign_add_moment(post_ring_header, 0, 0, ring_label_screen_x, ring_label_screen_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if (perfect_bonus >= 0) {
	post_perfect_header = instance_create_layer(perfect_label_screen_x + perfect_score_ox, perfect_label_screen_y, "gui", AnimatedGameSign);
	post_perfect_header.sprite_index = PerfectBonusScoreSprite;
	post_perfect_header.destroy = false;
	game_sign_add_moment(post_perfect_header, perfect_score_enter_duration, wait_before_score_text, perfect_label_screen_x + perfect_score_ox, perfect_label_screen_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	game_sign_add_moment(post_perfect_header, 0, 0, perfect_label_screen_x, perfect_label_screen_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

post_score_header = instance_create_layer(total_label_screen_x + total_score_ox, total_label_screen_y, "gui", AnimatedGameSign);
post_score_header.sprite_index = TotalBonusScoreSprite;
post_score_header.destroy = false;
game_sign_add_moment(post_score_header, total_score_enter_duration, wait_before_score_text, total_label_screen_x + total_score_ox, total_label_screen_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
game_sign_add_moment(post_score_header, 0, 0, total_label_screen_x, total_label_screen_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

post_time_score = instance_create_layer(time_value_screen_x + time_score_ox, time_value_screen_y, "gui", AnimatedLabeledGameSign);
post_time_score.label = string(time_bonus);
post_time_score.font = global.HUDFont;
post_time_score.halign = fa_right;
post_time_score.destroy = false;
game_sign_add_moment(post_time_score, time_score_enter_duration, wait_before_score_text, time_value_screen_x + time_score_ox, time_value_screen_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
game_sign_add_moment(post_time_score, 0, 0, time_value_screen_x, time_value_screen_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

post_rings_score = instance_create_layer(ring_value_screen_x + ring_score_ox, ring_value_screen_y, "gui", AnimatedLabeledGameSign);
post_rings_score.label = string(rings_bonus);
post_rings_score.font = global.HUDFont;
post_rings_score.halign = fa_right;
post_rings_score.destroy = false;
game_sign_add_moment(post_rings_score, ring_score_enter_duration, wait_before_score_text, ring_value_screen_x + ring_score_ox, ring_value_screen_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
game_sign_add_moment(post_rings_score, 0, 0, ring_value_screen_x, ring_value_screen_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if (perfect_bonus >= 0) {
	post_perfect_score = instance_create_layer(perfect_value_screen_x + perfect_score_ox, perfect_value_screen_y, "gui", AnimatedLabeledGameSign);
	post_perfect_score.label = string(perfect_bonus);
	post_perfect_score.font = global.HUDFont;
	post_perfect_score.halign = fa_right;
	post_perfect_score.destroy = false;
	game_sign_add_moment(post_perfect_score, perfect_score_enter_duration, wait_before_score_text, perfect_value_screen_x + perfect_score_ox, perfect_value_screen_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	game_sign_add_moment(post_perfect_score, 0, 0, perfect_value_screen_x, perfect_value_screen_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

post_total_score = instance_create_layer(total_value_screen_x + total_score_ox, total_value_screen_y, "gui", AnimatedLabeledGameSign);
post_total_score.label = string(total_bonus);
post_total_score.font = global.HUDFont;
post_total_score.halign = fa_right;
post_total_score.destroy = false;
game_sign_add_moment(post_total_score, total_score_enter_duration, wait_before_score_text, total_value_screen_x + total_score_ox, total_value_screen_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
game_sign_add_moment(post_total_score, 0, 0, total_value_screen_x, total_value_screen_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

post_continue_icon = instance_create_layer(continues_screen_x, continues_screen_y, "gui", GameSign);
post_continue_icon.sprite_index = continues_icon;
post_continue_icon.visible = false;