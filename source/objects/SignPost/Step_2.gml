/// @description  Gate
switch (state) {
case "wait":
    var player = game_player_find(0);
    if (instance_exists(player)) {
        if (sign(image_xscale) == sign(player.character.x_int - x)) {
            game_pc_lose_super(player.character);
            character = player.character_id;
            event_user(0);
            player.character.stage_end = true;
            game_pc_play_sound(player.character, SignPostSound);
            with (ZoneTimeLimit) {
                enabled = false;
            }
            state = "";
        }
    }
    break;

case "check":
    with (GamePlayer) {
        state = "leaving";
        character.bound_ignore_mask |= int64(4);
    }
    state = "exit";
    break;

case "exit":
    var done = true;
    var player = game_player_find(0);
    if (instance_exists(player)) {
        if (player.character.x_int < room_width + 16) {
            done = false;
            break;
        }
    }
    if (done) {
        instance_create_layer(0, 0, "gui", ScoreTally);
        state = "";
    }
    break;
}

