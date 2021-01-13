/// @description  Gate
switch (state) {
case "wait":
    var player;
    for (var n = 0; n < total; ++n) {
        if (not passed[n]) {
            player = game_player_find(n);
            if (instance_exists(player)) {
                if (sign(image_xscale) == sign(player.character.x_int - x)) {
                    game_pc_lose_super(player.character);
                    character = player.character_id;
                    passed[n] = true;
                    event_user(0);
                    game_pc_play_sound(player.character, SignPostSound);
                    with (ZoneTimeLimit) {
                        enabled = false;
                    }
                    state = "";
                }
            }
        }
    }
    break;

case "check":
    var done = true;
    for (var n = 0; n < total; ++n) {
        if (not passed[n]) {
            done = false;
        }
    }
    if (done) {
        // TODO: competition results screen
        state = "";
    }
    break;
}

