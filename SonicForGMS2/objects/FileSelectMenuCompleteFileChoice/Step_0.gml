/// @description  Update
event_inherited();
if (game_is_running()) {
    select_enabled = (selected and owner.mode == "select" and owner.cursor.hspeed == 0);
    if (select_enabled and owner.enabled and owner.alarm[0] <= 0) {
        var previous = location_index;
        var total = 2;
        if (game_input_event_pressed(event_ascend)) {
            location_index = (location_index + 1) mod total;
        } else if (game_input_event_pressed(event_descend)) {
            location_index--;
            if (location_index < 0) {
                location_index = total - 1;
            }
        }
        if (location_index != previous) {
            game_audio_play_sound(BeepSound);
            completion_index = 0;
        }
    }
}

