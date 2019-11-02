/// @description  Restart (if applicable)
/// @param if applicable
if (next != noone) {
    with (previous) {
        position = 0;
    }
}

action_inherited();
/// Fade in
if (next == noone) {
    with (previous) {
        if (playing) {
            game_audio_fade_in_music(other.fade_time, self);
        }
    }
}

