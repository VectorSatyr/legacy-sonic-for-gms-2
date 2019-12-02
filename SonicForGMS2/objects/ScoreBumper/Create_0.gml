/// @description  Initialize
event_inherited();
reaction_script = player_react_to_score_bumper;

for (var n = 0; n < MAX_PLAYER_COUNT; ++n) {
    counter[n] = 10;
}

