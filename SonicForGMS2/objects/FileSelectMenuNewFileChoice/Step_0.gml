action_inherited();
/// Update
if (game_is_running()) {
    select_enabled = (selected and owner.mode == "select" and owner.cursor.hspeed == 0);
    if (select_enabled and owner.enabled and owner.alarm[0] <= 0) {
        var previous = character_index;
        if (game_input_event_pressed(event_ascend)) {
            character_index = (character_index + 1) mod total_characters;
        } else if (game_input_event_pressed(event_descend)) {
            character_index--;
            if (character_index < 0) {
                character_index += total_characters;
            }
        }
        if (character_index != previous) {
            game_audio_play_sound(BeepSound);
        }
    }
}

